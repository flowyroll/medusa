.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xeef7, %rsi
lea addresses_A_ht+0x162f7, %rdi
nop
nop
nop
xor $4614, %r8
mov $39, %rcx
rep movsw
nop
nop
nop
xor $32464, %rcx
lea addresses_WT_ht+0x73f7, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
sub $21158, %r10
lea addresses_WC_ht+0x5557, %rsi
lea addresses_A_ht+0x17d23, %rdi
nop
nop
nop
inc %r10
mov $20, %rcx
rep movsb
nop
xor $45925, %r10
lea addresses_WC_ht+0x18f4b, %r9
nop
nop
sub %rbp, %rbp
mov (%r9), %rdi
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x112f7, %r8
dec %rcx
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xdff7, %rcx
nop
nop
nop
nop
nop
add $16841, %rdi
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
inc %rbp
lea addresses_normal_ht+0x756b, %rdi
nop
nop
nop
nop
cmp $34781, %r9
mov (%rdi), %r8
cmp %rbp, %rbp
lea addresses_UC_ht+0x152f7, %rsi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x33f7, %rbp
nop
nop
xor %r10, %r10
movb (%rbp), %cl
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_UC+0x11b, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovaps %ymm5, (%rbx)
nop
nop
nop
inc %r13

// Store
lea addresses_UC+0x154f7, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
movw $0x5152, (%rdi)
nop
nop
and %rsi, %rsi

// Store
lea addresses_A+0x1134d, %rbx
nop
nop
nop
nop
and $22909, %rsi
movb $0x51, (%rbx)
nop
nop
nop
nop
xor %rdi, %rdi

// Load
lea addresses_US+0xb277, %r12
nop
nop
nop
nop
and %r15, %r15
vmovaps (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
and %rsi, %rsi

// Faulty Load
lea addresses_US+0xfaf7, %rbx
nop
xor $55233, %r15
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'44': 3, '00': 4, '48': 6, '49': 1}
44 00 00 00 48 48 44 00 49 48 48 48 44 48
*/
