.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b1f3, %r10
nop
sub $21582, %r8
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
and $60420, %r10
lea addresses_A_ht+0x2ff3, %rsi
lea addresses_A_ht+0x199fa, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $4635, %rdx
mov $61, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x16583, %rdi
nop
inc %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
cmp $34817, %rdi
lea addresses_D_ht+0x1ddf3, %rcx
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
cmp $43205, %rcx
lea addresses_A_ht+0xdbf3, %r10
nop
nop
sub $43823, %rsi
movb $0x61, (%r10)
inc %r10
lea addresses_normal_ht+0x43f3, %rdx
nop
sub $27246, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %rdx
vmovaps %ymm2, (%rdx)
nop
nop
nop
nop
and $47853, %r10
lea addresses_UC_ht+0x8833, %r8
nop
add $64016, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %r8
vmovntdq %ymm5, (%r8)
and $61873, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_normal+0x1f473, %r12
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r12)
and %rbp, %rbp

// Load
lea addresses_PSE+0x1fb73, %r8
nop
nop
nop
nop
nop
lfence
movb (%r8), %dl
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_UC+0xd3f3, %rbp
nop
nop
nop
nop
nop
add $32967, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_A+0x15c73, %rax
nop
nop
nop
nop
cmp $18, %rdx
movb $0x51, (%rax)
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_US+0x87f3, %r8
nop
nop
nop
xor $13002, %r9
vmovaps (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'45': 37}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
