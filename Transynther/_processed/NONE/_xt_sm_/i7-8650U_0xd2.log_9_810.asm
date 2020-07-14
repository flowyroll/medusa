.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xbf6b, %rdx
xor %r12, %r12
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %rbp
nop
cmp %r12, %r12
lea addresses_WC_ht+0x2bc8, %rsi
lea addresses_UC_ht+0x16c48, %rdi
nop
nop
nop
nop
inc %r14
mov $39, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x8fc8, %rbp
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
and $24345, %r14
lea addresses_D_ht+0x1d8a8, %rdi
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add $33273, %rdx
lea addresses_normal_ht+0x1d8c8, %rsi
lea addresses_A_ht+0xc668, %rdi
nop
nop
nop
sub $64651, %rax
mov $18, %rcx
rep movsl
nop
inc %r12
lea addresses_normal_ht+0x13228, %rcx
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%rcx), %bp
nop
nop
cmp $59536, %rdi
lea addresses_UC_ht+0x13d2, %r12
sub %r14, %r14
movl $0x61626364, (%r12)
nop
xor %r14, %r14
lea addresses_WT_ht+0x103c8, %rsi
lea addresses_WC_ht+0x16bc8, %rdi
nop
nop
dec %r12
mov $12, %rcx
rep movsq
nop
inc %rdi
lea addresses_D_ht+0x1168c, %rdi
nop
nop
nop
nop
nop
cmp $30609, %rdx
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
nop
cmp $55030, %r14
lea addresses_WC_ht+0x1c1c8, %rsi
lea addresses_WC_ht+0x2748, %rdi
nop
sub %rax, %rax
mov $125, %rcx
rep movsw
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x9768, %rsi
dec %rdi
movb (%rsi), %r12b
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x1d288, %rcx
clflush (%rcx)
nop
and %rdi, %rdi
mov (%rcx), %ax
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x7c8, %rsi
lea addresses_D_ht+0x12988, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $17, %rcx
rep movsq
nop
nop
nop
nop
xor $20181, %r14
lea addresses_UC_ht+0x1c106, %rdi
nop
nop
dec %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
add $58812, %rdi
lea addresses_WT_ht+0x10a48, %rcx
nop
nop
nop
nop
and $25918, %rdx
movb $0x61, (%rcx)
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x13fc8, %r14
nop
nop
nop
nop
and $27322, %r12
movl $0x51525354, (%r14)
nop
nop
nop
dec %r14

// Store
lea addresses_A+0xd9c8, %r8
clflush (%r8)
nop
nop
nop
add %rax, %rax
movb $0x51, (%r8)
nop
nop
nop
nop
add $33058, %rsi

// Store
lea addresses_UC+0x848, %r14
nop
inc %rdi
movb $0x51, (%r14)
and %rdi, %rdi

// Store
lea addresses_UC+0x19ad8, %r12
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movntdq %xmm4, (%r12)
nop
inc %rdx

// Store
lea addresses_WC+0x13bc8, %rax
clflush (%rax)
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%rax)
nop
cmp $34243, %r12

// Faulty Load
lea addresses_WC+0x13bc8, %rdx
nop
nop
nop
nop
sub $54407, %r12
mov (%rdx), %r8d
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'52': 9}
52 52 52 52 52 52 52 52 52
*/
