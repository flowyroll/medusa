.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c1bc, %r9
nop
nop
nop
nop
nop
add $65195, %r12
vmovups (%r9), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xb5bc, %r10
nop
nop
nop
nop
nop
cmp $33056, %rbx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
sub $17006, %rsi
lea addresses_UC_ht+0x9cbc, %rsi
lea addresses_normal_ht+0x1344c, %rdi
nop
nop
and $24502, %r14
mov $64, %rcx
rep movsl
sub $23062, %r12
lea addresses_UC_ht+0x159dc, %rsi
lea addresses_A_ht+0x11bc, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $32, %rcx
rep movsq
nop
nop
nop
nop
sub $45323, %rcx
lea addresses_WT_ht+0x143bc, %rsi
lea addresses_normal_ht+0xbfbc, %rdi
add $61733, %r9
mov $97, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $16290, %r9
lea addresses_UC_ht+0x19e4e, %r10
nop
nop
nop
nop
dec %r9
movb $0x61, (%r10)
and $53852, %rsi
lea addresses_D_ht+0x183bc, %r9
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
and $43453, %rcx
lea addresses_UC_ht+0x11a2, %rcx
nop
sub $46873, %r10
mov (%rcx), %si
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x6074, %r9
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%r9)
nop
and $21125, %rcx
lea addresses_UC_ht+0xda04, %rsi
lea addresses_normal_ht+0x129bc, %rdi
nop
nop
nop
nop
dec %r12
mov $13, %rcx
rep movsl
xor %r9, %r9
lea addresses_D_ht+0x131bc, %rbx
nop
nop
nop
add $28685, %rdi
movb $0x61, (%rbx)
nop
nop
nop
xor $34900, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx

// Store
lea addresses_PSE+0x129bc, %rbp
inc %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_A+0xf2c, %r8
nop
nop
add $58978, %r13
movw $0x5152, (%r8)
nop
nop
sub %r14, %r14

// Store
mov $0x791eeb00000001bc, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor $35206, %r10
mov $0x5152535455565758, %r13
movq %r13, (%r8)

// Exception!!!
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_PSE+0x129bc, %r10
nop
nop
and $28818, %r8
mov (%r10), %r13d
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'52': 91}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
