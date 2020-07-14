.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x103d9, %r8
nop
sub $55051, %r13
mov (%r8), %rdx
nop
nop
nop
nop
nop
cmp $24439, %r13
lea addresses_UC_ht+0x168d5, %rsi
lea addresses_WC_ht+0x1abd9, %rdi
nop
xor %r10, %r10
mov $28, %rcx
rep movsb
and $27491, %r8
lea addresses_WT_ht+0x1bbd9, %rsi
lea addresses_UC_ht+0x16c41, %rdi
nop
nop
nop
nop
sub $20025, %rbp
mov $2, %rcx
rep movsb
nop
inc %rdi
lea addresses_D_ht+0x173d9, %rdx
nop
nop
nop
nop
xor %rsi, %rsi
movb (%rdx), %cl
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0xe919, %rsi
lea addresses_WC_ht+0xebd9, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $102, %rcx
rep movsl
nop
and %r8, %r8
lea addresses_A_ht+0xe0b9, %rbp
nop
nop
sub $50584, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbp)
add %rcx, %rcx
lea addresses_WT_ht+0x17b19, %rsi
lea addresses_A_ht+0xa251, %rdi
clflush (%rsi)
nop
and $62988, %rdx
mov $114, %rcx
rep movsb
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0x164f1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
add $21099, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rdi

// Load
mov $0x487edf00000002b9, %r8
nop
and %r10, %r10
movb (%r8), %r14b
nop
nop
nop
and %r8, %r8

// Load
lea addresses_WT+0xefd9, %r15
dec %rdi
movups (%r15), %xmm3
vpextrq $1, %xmm3, %r11
and %r8, %r8

// Store
lea addresses_US+0x7919, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
and $40245, %r14

// Faulty Load
lea addresses_WT+0x1bd9, %r10
nop
inc %r11
vmovaps (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'48': 1182, '49': 20486, '72': 62, '00': 1, '04': 1, '08': 97}
49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 72 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 04 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 08 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 49 49 49 49 49 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 48 48 49 48 48 48 48 48 49 49 49 49 49 49 49 49 49 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 48 48 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 48 48 49 49 49 48 48 48 48 48 48 48 48 48 48 48 48 48 48 49 48 48 48 48 48 48 48 48 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49
*/
