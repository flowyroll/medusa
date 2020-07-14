.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rcx
push %rsi
lea addresses_UC_ht+0x1cf86, %rsi
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rax
movq %rax, (%rsi)
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rcx
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x4f86, %rcx
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
nop
nop
cmp $31665, %rsi

// Load
lea addresses_RW+0x17386, %rcx
nop
nop
nop
and %r9, %r9
mov (%rcx), %si
nop
nop
nop
nop
add %rcx, %rcx

// Store
mov $0x1a6fe700000008ee, %r15
nop
inc %r9
movb $0x51, (%r15)
nop
nop
and %r10, %r10

// Store
lea addresses_D+0x1da26, %r9
clflush (%r9)
nop
sub $55723, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%r9)

// Exception!!!
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Load
mov $0x44259d0000000e0f, %r15
nop
nop
nop
nop
nop
and $29390, %r9
mov (%r15), %esi
nop
nop
nop
nop
nop
cmp $56829, %r12

// Load
lea addresses_US+0x1e8a6, %r9
add %rcx, %rcx
vmovups (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
nop
add $602, %rsi

// Store
lea addresses_RW+0x19946, %rsi
dec %r12
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_A+0x183cc, %r15
add %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movntdq %xmm5, (%r15)
nop
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_US+0x14786, %rsi
nop
dec %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rsi)
and %rbx, %rbx

// Faulty Load
lea addresses_US+0x14786, %r10
nop
nop
nop
nop
nop
inc %r12
mov (%r10), %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'00': 2}
00 00
*/
