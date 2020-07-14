.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x15119, %rcx
nop
nop
nop
nop
nop
sub $23902, %rdi
mov (%rcx), %r12d
cmp %rdx, %rdx
lea addresses_UC_ht+0x16eb9, %r14
nop
nop
nop
cmp $33090, %rbp
movb (%r14), %cl
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x9299, %rdi
nop
nop
nop
xor $32979, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
and $0xffffffffffffffc0, %rdi
movaps %xmm4, (%rdi)
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x13f91, %rsi
lea addresses_A_ht+0x1516f, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $32, %rcx
rep movsb
nop
nop
inc %rdi
lea addresses_WT_ht+0xf209, %rbp
nop
and %rdx, %rdx
movb (%rbp), %r12b
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1a771, %rcx
nop
nop
and %rdx, %rdx
mov (%rcx), %bp
and $36497, %r14
lea addresses_UC_ht+0x1ee49, %rcx
clflush (%rcx)
nop
nop
nop
inc %r12
movb (%rcx), %dl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x16eb7, %rsi
lea addresses_normal_ht+0xb599, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
and $8498, %r14
lea addresses_normal_ht+0x147b, %rsi
lea addresses_A_ht+0x15b65, %rdi
nop
nop
nop
and $39859, %r11
mov $38, %rcx
rep movsb
nop
sub $13398, %rbp
lea addresses_A_ht+0x147c1, %rsi
lea addresses_UC_ht+0x1c6af, %rdi
clflush (%rdi)
nop
sub %r12, %r12
mov $24, %rcx
rep movsb
nop
nop
and $30445, %rcx
lea addresses_D_ht+0x11999, %rbp
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm7, (%rbp)
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x18399, %r11
nop
nop
nop
and $40216, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x1552b, %rsi
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_A_ht+0xbd99, %r12
and %rbp, %rbp
movb (%r12), %r14b
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbx
push %rdi
push %rdx

// Store
mov $0x4fb298000000017d, %rdx
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rdx)
cmp %r12, %r12

// Store
lea addresses_WC+0x7449, %r13
nop
cmp %rdi, %rdi
movw $0x5152, (%r13)
nop
sub $16127, %rbx

// Store
mov $0x24c7420000000999, %r13
nop
nop
nop
nop
cmp $17259, %r8
movb $0x51, (%r13)
nop
nop
sub $63819, %r13

// Faulty Load
lea addresses_PSE+0x1ed99, %rdx
nop
nop
and $44673, %rbx
mov (%rdx), %r13w
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'33': 117}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
