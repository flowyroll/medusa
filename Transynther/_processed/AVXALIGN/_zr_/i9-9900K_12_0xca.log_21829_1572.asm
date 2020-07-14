.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xcaea, %rbx
dec %r14
mov (%rbx), %r15
nop
nop
nop
nop
nop
and $54508, %r15
lea addresses_WT_ht+0x17eea, %rsi
lea addresses_WT_ht+0x156c2, %rdi
and %r11, %r11
mov $28, %rcx
rep movsq
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x63ca, %rdi
inc %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x6dea, %rdi
nop
nop
sub $17756, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
nop
add $20844, %rcx
lea addresses_WT_ht+0x558a, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %rsi
vmovaps %ymm7, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x9bcc, %rcx
nop
nop
inc %r14
movb (%rcx), %r11b
nop
nop
nop
nop
sub $20734, %rsi
lea addresses_D_ht+0x2a, %rdi
nop
nop
nop
nop
inc %r14
movb $0x61, (%rdi)
nop
nop
dec %r14
lea addresses_D_ht+0x2ee, %rsi
lea addresses_WT_ht+0x185ea, %rdi
sub %rdx, %rdx
mov $59, %rcx
rep movsw
nop
nop
nop
nop
add $27718, %rcx
lea addresses_A_ht+0x94ca, %rcx
nop
nop
nop
and $64909, %r15
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp $24644, %rsi
lea addresses_WC_ht+0x7cea, %r14
nop
sub $10074, %rdx
movb (%r14), %bl
nop
nop
sub $24695, %r15
lea addresses_normal_ht+0x11ea, %rdi
nop
nop
nop
nop
add %r14, %r14
mov (%rdi), %rbx
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x9e6a, %rsi
lea addresses_WC_ht+0xfad2, %rdi
mfence
mov $43, %rcx
rep movsl
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0xea2a, %r15
nop
nop
nop
nop
cmp $31444, %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r15)
nop
nop
inc %r14
lea addresses_UC_ht+0x18d6e, %rcx
nop
xor %r11, %r11
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor $3359, %rdi
lea addresses_normal_ht+0xacda, %rsi
lea addresses_WT_ht+0xb56a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor %rbx, %rbx
mov $98, %rcx
rep movsq
nop
nop
nop
nop
cmp $48570, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_WT+0xbe3a, %r8
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_D+0x4032, %rdi
xor %r15, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_normal+0x79ee, %rdi
nop
nop
sub $59022, %rax
movb (%rdi), %r15b
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_D+0x44f2, %r11
nop
inc %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
and $17583, %r12

// Faulty Load
lea addresses_US+0xf8ea, %r13
sub $62605, %r8
mov (%r13), %r12d
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
