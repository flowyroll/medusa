.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x159cc, %r9
dec %rdi
movups (%r9), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x12350, %r8
nop
and $61432, %rdi
mov (%r8), %r14
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x12d1c, %rdx
nop
nop
nop
nop
and $3668, %rbx
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
nop
nop
xor $54310, %rdi
lea addresses_UC_ht+0x10c0c, %rbx
nop
nop
sub $49758, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rbx
movaps %xmm1, (%rbx)
nop
nop
sub $48506, %rbx
lea addresses_UC_ht+0x14acc, %rsi
lea addresses_UC_ht+0xeaa, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $65, %rcx
rep movsb
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0xb13c, %rsi
lea addresses_D_ht+0x124dc, %rdi
nop
nop
cmp %rbx, %rbx
mov $74, %rcx
rep movsw
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1ec8c, %rdi
nop
nop
nop
add $5692, %rbx
movw $0x6162, (%rdi)
nop
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1eccc, %rsi
lea addresses_UC_ht+0x824c, %rdi
nop
nop
nop
cmp $20498, %rbx
mov $7, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x7dcc, %rcx
nop
cmp $10652, %r9
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
nop
add $53527, %rcx
lea addresses_WT_ht+0x68cc, %r14
nop
nop
nop
nop
nop
cmp $54952, %r8
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x11e7a, %r9
nop
xor $59286, %rcx
movw $0x6162, (%r9)
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xd4c, %r10
nop
and $47586, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
add %r10, %r10

// Load
lea addresses_WC+0xf3fc, %rcx
nop
nop
nop
nop
nop
xor $32836, %rdi
movb (%rcx), %bl
nop
dec %rax

// Store
mov $0xacc, %r10
cmp $47732, %rax
movb $0x51, (%r10)
nop
nop
sub $60286, %r15

// Store
lea addresses_RW+0xeb64, %rax
nop
add $41321, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rax)
nop
nop
cmp %r15, %r15

// Store
lea addresses_RW+0x77b7, %r10
nop
nop
nop
nop
nop
xor $36956, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
xor $45312, %rbx

// Store
lea addresses_UC+0xb8cc, %r15
nop
nop
nop
nop
xor $3951, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
cmp $29795, %rcx

// Store
lea addresses_WC+0xc4aa, %rdi
cmp %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_UC+0xb8cc, %rbx
nop
nop
add $50934, %rsi
mov (%rbx), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'58': 179}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
