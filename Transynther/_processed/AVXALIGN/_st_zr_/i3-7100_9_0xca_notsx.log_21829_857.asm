.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13a1, %r11
nop
and %rbx, %rbx
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
cmp $59313, %rdi
lea addresses_WC_ht+0x11621, %r14
nop
nop
nop
nop
and %r9, %r9
movb $0x61, (%r14)
nop
nop
nop
nop
and $42676, %r10
lea addresses_WC_ht+0x12221, %rsi
lea addresses_D_ht+0x110a1, %rdi
nop
nop
nop
inc %r11
mov $19, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xb161, %rsi
lea addresses_WT_ht+0x1b021, %rdi
clflush (%rsi)
xor %r14, %r14
mov $35, %rcx
rep movsw
dec %r14
lea addresses_WC_ht+0x11221, %r14
nop
nop
xor $40912, %r11
mov (%r14), %ecx
nop
add $36168, %rcx
lea addresses_UC_ht+0x14221, %rsi
lea addresses_WC_ht+0x11c01, %rdi
nop
nop
nop
inc %r9
mov $45, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x1c521, %rbx
cmp $42820, %r10
movl $0x61626364, (%rbx)
nop
nop
lfence
lea addresses_UC_ht+0xd021, %rsi
lea addresses_A_ht+0x120ad, %rdi
nop
nop
cmp %r9, %r9
mov $112, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x1e79f, %r10
cmp $999, %rcx
mov (%r10), %r11w
nop
nop
nop
nop
nop
sub $36257, %r10
lea addresses_WC_ht+0x144a1, %r14
nop
nop
nop
nop
nop
inc %r11
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
and %r14, %r14
lea addresses_D_ht+0x621, %rcx
nop
nop
nop
nop
nop
add %r9, %r9
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x5de9, %r14
nop
sub $23697, %r10
movl $0x61626364, (%r14)
cmp %r9, %r9
lea addresses_D_ht+0x124c9, %r11
nop
nop
sub $23140, %r10
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
sub %r9, %r9
lea addresses_WT_ht+0x11271, %rcx
nop
nop
and %r14, %r14
mov (%rcx), %r10d
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1f61, %r10
nop
nop
and $51016, %r14
mov (%r10), %rdi
nop
nop
nop
add $59385, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x2ec0, %rdi
nop
nop
xor $45147, %r9
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
and %rbx, %rbx

// Load
mov $0x2947de0000000e61, %r14
nop
nop
nop
dec %rax
mov (%r14), %edi
nop
nop
nop
nop
dec %r14

// Store
mov $0xa21, %r13
nop
nop
nop
xor $6582, %rax
movw $0x5152, (%r13)
nop
add %rdi, %rdi

// Store
lea addresses_normal+0x1e8a1, %rax
nop
nop
nop
nop
inc %r14
movw $0x5152, (%rax)
nop
nop
nop
nop
cmp $40097, %r14

// Store
mov $0x6f, %r9
nop
nop
nop
nop
sub $33344, %r14
movl $0x51525354, (%r9)
nop
nop
dec %r14

// Faulty Load
lea addresses_PSE+0x19a21, %r14
nop
nop
nop
nop
sub %rdi, %rdi
vmovaps (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 8899, '52': 12930}
52 00 00 00 52 52 00 52 00 52 52 52 52 00 52 00 00 52 52 52 00 00 00 00 00 00 52 00 52 52 52 52 52 52 00 00 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 00 00 00 00 52 52 52 00 00 52 52 52 52 00 00 52 52 00 52 52 00 52 00 00 00 52 00 00 52 00 00 00 00 00 00 52 52 52 00 00 00 00 00 00 00 52 52 00 52 00 52 00 52 52 52 52 00 00 52 00 00 52 00 52 00 00 52 52 52 00 00 00 00 00 00 52 00 52 52 52 52 00 00 00 00 00 00 00 52 52 00 52 00 52 00 00 00 00 00 52 52 00 52 00 52 00 52 00 00 52 52 00 00 52 00 00 00 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 00 52 00 52 00 00 52 00 52 00 52 52 00 52 52 52 00 00 52 00 00 00 00 52 00 52 00 52 52 52 00 52 00 00 52 52 52 52 00 52 00 52 00 52 00 00 00 00 52 00 52 52 52 00 00 52 52 52 00 52 52 52 52 00 00 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 00 00 52 00 00 00 52 52 52 52 00 00 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 00 52 52 00 00 52 52 00 52 52 52 00 52 00 00 52 00 00 52 52 00 52 00 52 00 52 00 52 52 52 52 00 00 00 52 52 00 00 00 00 52 52 00 52 52 00 52 52 00 52 00 52 52 00 52 52 52 52 00 52 00 00 52 52 00 00 52 52 52 00 52 00 00 00 52 52 52 00 52 52 52 52 52 00 00 52 00 52 52 52 52 52 52 00 00 52 52 52 52 52 52 00 00 52 00 52 52 00 52 52 00 52 00 52 52 52 00 00 52 52 00 00 52 52 52 52 00 00 52 52 52 00 00 52 00 52 52 52 00 00 52 52 52 52 52 52 52 00 52 00 00 00 52 52 00 52 52 52 52 00 00 00 00 52 52 52 52 52 52 52 00 52 52 52 52 00 00 52 52 00 00 00 00 00 52 00 52 00 52 52 52 52 00 52 00 52 52 52 00 00 00 52 52 52 00 00 52 00 00 00 00 00 52 52 52 52 52 52 00 52 00 00 52 00 52 00 00 00 00 00 00 52 00 00 00 00 52 00 52 52 52 52 00 00 52 52 52 52 52 52 52 00 52 52 52 52 00 00 52 00 00 00 52 00 00 52 52 52 52 52 00 52 00 52 52 00 52 52 00 52 52 00 00 00 00 00 00 00 52 52 00 52 52 52 52 52 52 52 52 00 00 52 00 00 00 00 52 52 52 00 00 52 00 00 00 00 00 00 52 00 52 00 00 52 00 00 00 52 52 52 00 52 52 52 52 52 00 00 00 00 00 00 00 00 00 52 52 52 00 00 52 52 52 00 52 00 00 52 00 52 52 00 00 00 00 52 52 52 00 00 52 52 00 52 52 52 00 52 52 52 00 52 52 00 00 00 52 52 52 52 52 00 52 52 52 00 52 52 00 00 00 52 00 52 00 52 00 52 00 52 00 52 52 00 52 00 52 00 00 52 52 52 52 52 52 52 00 52 52 00 52 00 52 00 52 52 00 00 52 00 52 00 00 52 00 52 00 52 52 00 52 00 52 52 00 52 52 52 52 00 52 00 00 00 52 52 00 52 00 00 00 52 52 00 00 00 00 52 52 52 00 00 52 52 00 52 52 52 00 00 52 52 00 00 00 52 00 00 00 52 00 00 52 52 52 52 00 00 52 52 00 52 00 52 00 52 00 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 00 00 00 52 52 52 00 52 52 00 00 52 00 52 00 00 52 52 52 52 52 52 52 52 52 52 52 00 00 00 52 00 00 00 00 00 00 52 52 00 00 00 52 52 52 00 00 00 52 52 52 00 52 52 00 00 00 52 52 00 00 52 52 52 52 52 52 00 52 00 52 52 52 52 52 00 52 52 52 52 00 00 00 52 00 52 00 52 00 00 00 52 52 52 52 00 52 00 52 52 52 52 52 52 00 52 52 52 00 52 52 00 52 00 52 00 52 00 00 52 52 00 00 00 00 52 52 52 52 52 52 00 00 52 52 00 00 00 52 52 00 52 52 52 00 52 00 52 52 00 52 52 00 52 00 52 52 52 00 52 00 00 52 52 00 52 52 52 52 00
*/
