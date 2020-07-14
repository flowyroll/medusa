.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x137c1, %r10
clflush (%r10)
nop
nop
nop
nop
dec %rcx
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
xor $45560, %r8
lea addresses_normal_ht+0x1d981, %r9
nop
nop
sub %r12, %r12
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
and $50012, %r9
lea addresses_WC_ht+0x14641, %rsi
lea addresses_normal_ht+0xfed7, %rdi
nop
nop
nop
sub $20813, %r12
mov $53, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $61998, %r9
lea addresses_A_ht+0xeec1, %r12
sub %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, (%r12)
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x16d1, %r14
nop
nop
sub $18992, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x8801, %r14
inc %r15
and $0xffffffffffffffc0, %r14
vmovaps (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
cmp $33710, %rcx
lea addresses_normal_ht+0x18c97, %r14
nop
nop
nop
nop
nop
inc %rcx
movb $0x61, (%r14)
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x1148, %r14
nop
add %r10, %r10
movups (%r14), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x129b1, %r14
nop
xor $11574, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x6fc1, %r14
nop
nop
nop
nop
and $63356, %r9
movb $0x61, (%r14)
nop
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rsi

// Store
lea addresses_A+0x10fc1, %rbx
nop
nop
nop
add $1511, %rsi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
xor $42474, %r10

// Store
lea addresses_D+0x1a7c1, %rsi
nop
nop
dec %r12
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WT+0xf5c1, %r12
nop
dec %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r12)
nop
cmp %r10, %r10

// Load
lea addresses_UC+0xf421, %r15
nop
nop
sub %r12, %r12
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
nop
nop
cmp $28018, %rax

// Faulty Load
lea addresses_D+0x1a7c1, %rbx
nop
nop
sub %r11, %r11
vmovups (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
