.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x98cc, %rbp
nop
cmp %r13, %r13
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x116ec, %r12
xor %r14, %r14
vmovups (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
add $36751, %rbp
lea addresses_WC_ht+0x11397, %r12
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r12)
cmp %rcx, %rcx
lea addresses_UC_ht+0x11dec, %rsi
lea addresses_WC_ht+0x102ec, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $42877, %r14
mov $42, %rcx
rep movsl
nop
nop
dec %r14
lea addresses_A_ht+0xb0ec, %rcx
nop
nop
nop
cmp $41164, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
add $47480, %r9
lea addresses_UC_ht+0xa08c, %rbp
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rbp)
sub %rcx, %rcx
lea addresses_WC_ht+0x3eec, %r14
nop
and $41415, %r12
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0x1bdf0, %r9
nop
inc %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_A+0x7aec, %r9
nop
sub $10025, %rdi
movw $0x5152, (%r9)
nop
nop
cmp $39012, %rbp

// Faulty Load
lea addresses_US+0x156ec, %rdi
nop
nop
xor %r15, %r15
mov (%rdi), %cx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}}
{'00': 97}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
