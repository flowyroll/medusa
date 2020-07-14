.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8431, %rdx
nop
nop
nop
dec %rcx
mov (%rdx), %rbp
add %rbx, %rbx
lea addresses_WT_ht+0x10e31, %r13
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%r13)
nop
xor $35932, %rbp
lea addresses_WC_ht+0x5784, %rcx
nop
nop
nop
and %rdx, %rdx
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rbx
xor $43241, %rbx
lea addresses_WC_ht+0x1a431, %rsi
lea addresses_A_ht+0x1cc31, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $37, %rcx
rep movsl
nop
sub $54143, %r13
lea addresses_A_ht+0xccc5, %rsi
lea addresses_D_ht+0x5fb1, %rdi
nop
nop
cmp %r11, %r11
mov $30, %rcx
rep movsb
nop
nop
add $2869, %r13
lea addresses_WT_ht+0x10431, %rcx
nop
nop
nop
nop
add %rbx, %rbx
mov (%rcx), %rax
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xa31, %rsi
lea addresses_D_ht+0x16031, %rdi
nop
nop
nop
sub %rax, %rax
mov $126, %rcx
rep movsq
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdx

// Faulty Load
mov $0x431, %r15
nop
nop
nop
nop
xor $25170, %rdx
vmovaps (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'48': 449, '00': 1065}
48 48 00 00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 00 48 48 00 00 48 00 00 00 00 00 48 00 48 00 00 48 48 48 00 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 00 48 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 48 00 00 48 48 00 48 00 00 00 00 48 48 00 48 48 48 48 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 00 48 00 00 48 00 00 00 48 48 00 00 00 48 00 00 48 00 48 00 00 00 48 00 00 48 00 48 00 00 48 00 00 00 00 48 00 48 48 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 48 48 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 48 00 48 48 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 48 48 00 00 48 00 48 00 00 00 00 00 48 00 00 00 48 48 00 00 00 48 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 48 48 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 48 48 48 48 00 00 00 48 48 00 48 00 00 48 00 00 48 00 48 48 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 48 00 48 48 00 48 00 00 00 00 48 00 48 00 00 00 00 48 48 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 00 48 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 48 48 00 00 00 48 48 00 48 00 00 00 48 48 00 00 48 00 00 48 48 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 48 48 00 48 00 00 48 00 00 00 00 48 00 48 00 48 00 48 48 00 00 00 00 48 00 00 00 00 00 48 00 48 48 48 48 00 00 00 00 48 48 00 00 00 00 48 48 00 00 48 48 00 48 00 00 00 00 00 48 00 00 00 00 00 48 48 48 48 48 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 48 00 48 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 48 00 00 00 48 00 48 00 48 48 00 00 00 00 00 48 00 48 00 00 48 48 00 00 48 48 00 00 00 00 48 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 48 00 48 00 00 00 00 48 00 00 00 48 48 48 48 00 00 00 48 00 48 00 48 00 00 00 48 48 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 48 48 00 00 00 48 00 48 00 00 48 00 00 48 00 48 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 48 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 48 00 00 48 00 48 00 48 00 48 48 00 48 00 00 48 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00
*/
