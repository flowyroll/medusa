.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1ef76, %rsi
lea addresses_normal_ht+0x14bf6, %rdi
nop
nop
xor %r12, %r12
mov $1, %rcx
rep movsw
sub %r14, %r14
lea addresses_WC_ht+0x1b17a, %r8
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r8)
nop
nop
cmp $62403, %rcx
lea addresses_D_ht+0xd76, %r14
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
xor $63301, %r12
lea addresses_WT_ht+0xe176, %rsi
lea addresses_normal_ht+0x862c, %rdi
xor %rax, %rax
mov $94, %rcx
rep movsq
nop
sub $26838, %rdi
lea addresses_WC_ht+0x168d6, %rsi
lea addresses_A_ht+0xc176, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $60894, %rbp
mov $98, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x2576, %r14
clflush (%r14)
nop
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r14)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xe576, %rsi
lea addresses_WC_ht+0x1ee, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $25, %rcx
rep movsw
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x13ccc, %r14
nop
nop
nop
nop
and %rdi, %rdi
mov (%r14), %esi
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x6376, %rsi
lea addresses_WC_ht+0x1db9e, %rdi
xor $18181, %r14
mov $118, %rcx
rep movsw
nop
sub $36307, %rdi
lea addresses_D_ht+0x75ee, %rsi
lea addresses_UC_ht+0x1ab86, %rdi
nop
nop
nop
nop
nop
add $17371, %r8
mov $126, %rcx
rep movsw
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x4976, %rsi
nop
nop
nop
cmp $13202, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0xab76, %rsi
lea addresses_A_ht+0x3576, %rdi
nop
nop
nop
lfence
mov $4, %rcx
rep movsb
nop
and $59113, %rcx
lea addresses_WT_ht+0x18fee, %rcx
nop
nop
nop
sub $31198, %rax
movb (%rcx), %r14b
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0x11976, %r8
nop
nop
nop
xor $41556, %rbx
movw $0x5152, (%r8)
nop
nop
sub $64963, %rbx

// Faulty Load
mov $0x5a6ed0000000576, %rax
nop
nop
nop
nop
nop
cmp $41936, %r8
mov (%rax), %r11d
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
