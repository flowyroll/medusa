.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x656, %rsi
lea addresses_WT_ht+0x1cbd6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $39, %rcx
rep movsq
and $16780, %rsi
lea addresses_D_ht+0x1d0b6, %r13
nop
nop
add $13922, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r13)
nop
sub %r13, %r13
lea addresses_UC_ht+0x2856, %r11
nop
nop
sub $18336, %r10
mov (%r11), %rbx
nop
nop
dec %r11
lea addresses_D_ht+0x11cb2, %r10
cmp %r11, %r11
movw $0x6162, (%r10)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x13056, %r10
nop
nop
nop
add $30931, %r13
movb $0x61, (%r10)
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x17056, %rsi
lea addresses_WC_ht+0x178be, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $38334, %r12
mov $30, %rcx
rep movsb
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0xba56, %r10
nop
nop
nop
nop
nop
sub $59940, %r12
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x3c56, %rsi
nop
nop
xor %rax, %rax
movl $0x51525354, (%rsi)
nop
cmp %rdi, %rdi

// Store
mov $0xcd6, %r14
nop
nop
nop
and %r8, %r8
movw $0x5152, (%r14)
nop
nop
nop
and $25250, %rbx

// Load
lea addresses_WC+0xa936, %rax
nop
nop
nop
nop
cmp %rdi, %rdi
movaps (%rax), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
sub $12536, %r8

// Store
lea addresses_RW+0x767a, %r11
nop
nop
nop
nop
and $13762, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r11)
nop
inc %rdi

// Faulty Load
lea addresses_A+0x1856, %r14
clflush (%r14)
nop
nop
nop
nop
nop
and $61171, %r8
mov (%r14), %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 343}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
