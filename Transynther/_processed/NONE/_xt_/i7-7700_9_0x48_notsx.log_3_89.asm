.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xac50, %rsi
lea addresses_normal_ht+0x1a650, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $69, %rcx
rep movsb
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x86f0, %rsi
lea addresses_WC_ht+0xee50, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $10193, %r10
mov $40, %rcx
rep movsb
nop
nop
add $15207, %rsi
lea addresses_A_ht+0x7a50, %r9
nop
nop
nop
nop
nop
sub %r11, %r11
movups (%r9), %xmm6
vpextrq $1, %xmm6, %rax
inc %r9
lea addresses_WT_ht+0x160f0, %r9
nop
nop
nop
nop
nop
sub $46348, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r9)
nop
dec %r10
lea addresses_D_ht+0xbb96, %rdi
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%rdi)
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x7a2, %r10
nop
nop
nop
nop
nop
xor %r9, %r9
movb $0x61, (%r10)
nop
nop
nop
cmp $58784, %rdi
lea addresses_UC_ht+0x6e50, %rsi
lea addresses_WT_ht+0xc420, %rdi
nop
nop
add $62132, %r14
mov $55, %rcx
rep movsl
xor %r11, %r11
lea addresses_WC_ht+0x17650, %rsi
lea addresses_WT_ht+0x1ad90, %rdi
nop
nop
sub %r9, %r9
mov $22, %rcx
rep movsw
nop
nop
nop
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_normal+0xe500, %r8
nop
nop
nop
cmp %rbp, %rbp
movb $0x51, (%r8)
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x3d4b67000000004e, %r10
nop
dec %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovntdq %ymm7, (%r10)
sub %r15, %r15

// Store
mov $0x2699c90000000e50, %r10
nop
xor %rbx, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp $17403, %r10

// Faulty Load
lea addresses_WT+0x19650, %r15
add $33820, %rbx
movups (%r15), %xmm1
vpextrq $1, %xmm1, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_NC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'39': 3}
39 39 39
*/
