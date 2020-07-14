.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xebd2, %rsi
nop
nop
cmp $6847, %r9
mov (%rsi), %r8d
nop
dec %r8
lea addresses_WC_ht+0x11993, %rdi
nop
nop
nop
cmp %r12, %r12
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm5
vpextrq $0, %xmm5, %rsi
nop
cmp $39067, %rsi
lea addresses_UC_ht+0x2af3, %rsi
lea addresses_A_ht+0xe433, %rdi
clflush (%rsi)
nop
nop
nop
nop
add %r8, %r8
mov $43, %rcx
rep movsw
and %r9, %r9
lea addresses_WC_ht+0x15a33, %r8
nop
nop
nop
nop
nop
sub %r13, %r13
mov (%r8), %si
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x46b3, %r12
nop
nop
nop
nop
nop
cmp $9108, %r13
mov (%r12), %di
sub $28598, %rdi
lea addresses_normal_ht+0x8833, %r8
nop
nop
nop
cmp $54585, %r13
movups (%r8), %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
nop
and $55900, %rsi
lea addresses_WC_ht+0x5563, %r8
nop
nop
and $64491, %rsi
mov (%r8), %r13d
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x16433, %rsi
lea addresses_WC_ht+0x10233, %rdi
nop
and $8108, %r13
mov $119, %rcx
rep movsl
inc %rcx
lea addresses_WT_ht+0x1958f, %r13
nop
nop
add $44856, %r9
movw $0x6162, (%r13)
nop
nop
nop
nop
xor $33600, %r8
lea addresses_WC_ht+0x12a33, %rcx
clflush (%rcx)
nop
nop
cmp $21237, %r12
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
and $9922, %rdi
lea addresses_D_ht+0x15e33, %rcx
sub $51876, %r9
movl $0x61626364, (%rcx)
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x80f7, %rsi
lea addresses_A_ht+0x1b233, %rdi
nop
inc %r8
mov $76, %rcx
rep movsb
sub %rsi, %rsi
lea addresses_WC_ht+0xbb9, %r12
dec %r8
movb (%r12), %cl
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rdx

// Store
mov $0x617fd500000004d3, %rdx
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdx)
cmp $37978, %r14

// Store
lea addresses_A+0xaa53, %rdx
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
cmp $16435, %r12

// Faulty Load
lea addresses_RW+0x8a33, %r12
nop
cmp $12518, %r15
mov (%r12), %r11d
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'32': 360}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
