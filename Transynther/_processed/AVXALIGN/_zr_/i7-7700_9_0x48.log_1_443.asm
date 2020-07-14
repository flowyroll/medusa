.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
lea addresses_WC_ht+0x42fe, %r10
nop
cmp %rbx, %rbx
movb $0x61, (%r10)
nop
nop
nop
nop
nop
add $56901, %r14
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_D+0x172fe, %rcx
nop
xor $1135, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm1
and $0xffffffffffffffc0, %rcx
vmovaps %ymm1, (%rcx)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_D+0xcfe, %r13
nop
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
inc %rcx

// Store
mov $0xefe, %rax
nop
nop
nop
nop
nop
and $19152, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovntdq %ymm0, (%rax)
nop
nop
nop
cmp $9764, %rax

// Store
lea addresses_UC+0x3a7e, %rax
nop
sub %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%rax)
inc %rcx

// Load
lea addresses_D+0x1abfe, %rcx
nop
nop
nop
and $11632, %r14
mov (%rcx), %r15w
nop
nop
and $42348, %r14

// Faulty Load
mov $0xefe, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %rax, %rax
vmovntdqa (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'00': 1}
00
*/
