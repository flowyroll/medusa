.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x3bc6, %rsi
lea addresses_WT_ht+0x10c6, %rdi
nop
nop
nop
nop
cmp %r8, %r8
mov $49, %rcx
rep movsw
mfence
lea addresses_WT_ht+0x1cdc6, %rbx
nop
nop
nop
nop
nop
dec %rdx
movb $0x61, (%rbx)
nop
cmp $52353, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x8f86, %r15
nop
nop
nop
inc %r13
movb $0x51, (%r15)
nop
nop
nop
nop
cmp $9198, %r11

// REPMOV
lea addresses_WT+0x1b3c6, %rsi
lea addresses_PSE+0x150c6, %rdi
clflush (%rdi)
sub $30698, %rbx
mov $42, %rcx
rep movsb
add $13397, %rax

// Faulty Load
lea addresses_WT+0x10cc6, %rax
nop
nop
nop
xor %rdi, %rdi
vmovntdqa (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'39': 1}
39
*/
