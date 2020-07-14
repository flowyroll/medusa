.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xfb2d, %rcx
clflush (%rcx)
nop
nop
and $2525, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x1d3fd, %rcx
nop
and %r8, %r8
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1147d, %rsi
lea addresses_WT_ht+0xddfd, %rdi
nop
nop
and $65161, %r11
mov $82, %rcx
rep movsl
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1ca30, %r8
and $61920, %rax
movl $0x61626364, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x11dfd, %r8
nop
nop
sub %rdi, %rdi
mov (%r8), %ax
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x885, %r8
clflush (%r8)
nop
nop
dec %rsi
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
nop
add $52144, %rdi
lea addresses_WC_ht+0xa759, %rcx
nop
nop
nop
nop
nop
inc %r9
mov (%rcx), %rdi
nop
nop
nop
nop
xor $37459, %r8
lea addresses_A_ht+0x580d, %r9
nop
nop
nop
dec %rcx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and $50592, %rsi
lea addresses_WT_ht+0x99fd, %rdi
nop
nop
sub %r9, %r9
mov (%rdi), %rcx
xor %rax, %rax
lea addresses_UC_ht+0xfa89, %r11
add %rax, %rax
movb $0x61, (%r11)
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1ed07, %r8
clflush (%r8)
add %r9, %r9
mov (%r8), %rcx
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x41b1, %rsi
lea addresses_WT_ht+0x771d, %rdi
nop
nop
nop
sub %rax, %rax
mov $95, %rcx
rep movsq
nop
inc %r8
lea addresses_UC_ht+0xbffd, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rsi)
cmp %rcx, %rcx
lea addresses_WC_ht+0x144fd, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
sub $11576, %rdi
lea addresses_D_ht+0x111fd, %rax
clflush (%rax)
cmp %r11, %r11
mov (%rax), %r9
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rax

// Store
lea addresses_UC+0x749d, %rax
nop
cmp %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rax)
nop
add %rax, %rax

// Faulty Load
lea addresses_WC+0x18dfd, %rax
nop
xor $14650, %r11
movaps (%rax), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'46': 49, '00': 23, '49': 2, '45': 1}
46 46 46 00 46 46 46 46 46 46 46 00 00 46 00 46 46 46 00 49 46 46 46 46 46 00 46 00 46 46 46 46 46 00 46 46 00 46 00 46 46 00 46 00 00 46 46 00 46 46 46 46 46 00 00 46 00 46 46 00 00 00 46 49 46 00 46 46 46 00 46 45 46 00 46
*/
