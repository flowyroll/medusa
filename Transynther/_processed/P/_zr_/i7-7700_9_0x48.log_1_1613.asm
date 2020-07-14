.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x760, %rsi
lea addresses_UC_ht+0xa750, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $101, %rcx
rep movsw
nop
nop
nop
nop
sub $52215, %r10
lea addresses_normal_ht+0x11000, %rdi
dec %r15
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1e7a0, %rdi
nop
nop
nop
nop
and $53940, %rbp
mov (%rdi), %cx
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1b410, %rsi
nop
nop
nop
nop
and $29885, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
sub $61558, %rcx
lea addresses_D_ht+0x2a8e, %r15
clflush (%r15)
nop
nop
nop
nop
dec %r10
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0xa4a0, %rdi
sub %rsi, %rsi
vmovups (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
cmp $63050, %r10
lea addresses_WT_ht+0x70a0, %rsi
nop
cmp $65362, %rbp
mov (%rsi), %eax
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x7120, %rcx
nop
sub %rsi, %rsi
mov (%rcx), %r10d
nop
nop
nop
nop
cmp $63002, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rdx
push %rsi

// Faulty Load
mov $0x8a0, %rsi
sub $11017, %r10
mov (%rsi), %edx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'00': 1}
00
*/
