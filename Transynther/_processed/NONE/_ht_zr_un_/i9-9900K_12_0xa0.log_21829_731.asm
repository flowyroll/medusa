.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x11198, %rax
clflush (%rax)
cmp $63054, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
cmp $9549, %rdi
lea addresses_normal_ht+0x131e8, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add $29102, %r8
movb (%r9), %r10b
nop
cmp $51813, %rdi
lea addresses_WT_ht+0xa108, %r8
nop
and %rax, %rax
movw $0x6162, (%r8)
nop
and %r9, %r9
lea addresses_WC_ht+0x788, %r14
nop
nop
nop
nop
lfence
mov (%r14), %r9d
nop
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0x9d88, %r11
nop
nop
nop
nop
nop
inc %r10
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
inc %rax
lea addresses_A_ht+0x1c308, %rdi
cmp %r14, %r14
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r9
sub %rdi, %rdi
lea addresses_UC_ht+0x212, %rdi
nop
nop
nop
nop
and %rax, %rax
movb (%rdi), %r11b
nop
inc %r14
lea addresses_D_ht+0x6008, %r8
nop
nop
add $33431, %r9
movb (%r8), %al
nop
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WC_ht+0x11f88, %rsi
lea addresses_D_ht+0x14c08, %rdi
cmp %r10, %r10
mov $35, %rcx
rep movsl
nop
and %r9, %r9
lea addresses_WC_ht+0xd788, %r9
nop
nop
nop
nop
nop
and $3075, %r14
mov $0x6162636465666768, %r11
movq %r11, (%r9)
sub %rcx, %rcx
lea addresses_D_ht+0xae04, %rcx
nop
nop
nop
nop
mfence
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
sub $12530, %rcx
lea addresses_WT_ht+0xda08, %r10
nop
nop
nop
nop
nop
dec %r11
movl $0x61626364, (%r10)
nop
nop
nop
sub $50038, %rcx
lea addresses_WC_ht+0x9c08, %rax
nop
xor $26317, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rax
vmovntdq %ymm7, (%rax)
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xe28, %rcx
nop
nop
nop
nop
xor $58363, %r8
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
cmp $20857, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx

// Faulty Load
lea addresses_WT+0x3f88, %r15
nop
nop
nop
nop
sub $44886, %rcx
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'48': 11176, '49': 5140, '00': 5510, '19': 1, '93': 1, '89': 1}
00 49 49 49 49 49 49 49 49 49 49 48 00 00 48 48 00 48 48 48 48 00 48 00 00 00 48 00 48 00 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 49 00 00 00 48 00 48 48 00 00 49 49 00 48 00 00 48 48 48 48 48 49 00 48 48 48 48 48 48 00 48 00 00 48 48 00 00 00 48 48 48 00 48 48 00 48 00 00 48 00 48 48 48 48 49 48 49 00 00 48 00 00 48 00 48 00 00 48 48 00 00 48 48 00 00 48 00 00 48 00 00 48 48 00 00 00 48 48 48 48 48 00 48 48 00 00 00 48 00 48 00 00 48 48 00 48 48 48 48 00 00 00 48 00 00 00 00 48 00 48 48 00 48 00 00 48 48 48 00 00 00 48 48 00 48 00 48 48 48 48 48 48 00 00 48 48 49 49 49 48 48 49 49 49 49 48 00 48 49 49 49 49 48 48 49 48 48 49 49 49 49 48 49 48 49 49 48 49 48 49 49 49 00 48 49 49 48 49 49 49 48 48 49 48 49 49 49 49 49 49 49 49 49 49 49 48 49 48 49 49 49 49 49 48 49 49 49 49 48 48 49 49 49 48 48 49 48 48 49 49 49 49 49 49 49 49 49 48 00 48 48 48 00 48 00 48 00 48 48 48 48 00 00 00 48 48 48 48 00 48 00 00 00 48 00 48 00 00 48 48 48 48 48 00 00 48 00 00 48 48 48 48 48 48 00 00 00 48 00 48 48 00 48 48 00 00 48 00 48 48 00 00 00 00 48 00 00 00 00 48 00 00 49 00 00 48 48 48 48 48 00 00 00 48 00 00 00 00 00 48 48 49 49 48 00 00 48 00 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 00 00 00 48 00 48 00 48 00 00 00 48 00 48 48 48 48 00 00 00 48 48 48 00 48 48 00 00 48 48 00 48 00 48 48 00 00 48 49 00 48 00 48 48 48 48 48 48 48 00 00 00 48 49 00 00 48 00 00 48 48 00 48 48 00 00 48 49 48 49 49 48 49 49 49 49 49 49 48 48 49 49 49 48 49 49 49 48 48 48 49 49 48 49 49 49 49 49 49 49 49 49 49 48 49 48 49 49 49 49 49 48 49 48 49 49 49 49 49 48 49 48 48 48 49 49 49 49 49 49 49 49 49 48 48 49 49 49 49 49 49 49 48 48 49 49 48 49 49 49 49 49 49 49 48 49 49 49 49 48 00 48 48 48 48 48 00 48 00 48 48 00 48 48 00 48 48 00 48 48 48 00 00 00 48 48 48 00 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 00 48 48 00 00 00 00 48 48 48 48 00 48 00 00 48 00 00 48 00 48 00 00 48 48 48 48 00 48 48 48 00 48 00 48 00 00 48 00 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 00 48 48 00 48 48 00 00 48 49 48 00 48 48 49 48 48 48 48 00 48 48 00 48 48 48 00 48 48 00 48 49 00 00 48 00 48 48 00 48 00 48 00 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 00 00 00 00 48 00 48 48 48 48 00 00 48 00 00 00 00 00 48 48 00 00 48 48 48 48 48 00 48 48 00 00 48 49 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 49 00 48 48 49 00 48 48 48 48 00 00 48 48 00 00 48 48 00 48 48 00 00 00 48 00 48 48 00 48 48 48 00 00 00 00 48 00 00 00 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 00 48 00 48 49 48 49 49 49 49 48 48 48 49 49 49 49 49 48 48 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 48 48 49 49 48 49 49 48 49 49 48 48 49 49 49 49 49 49 48 49 48 48 49 49 49 49 49 49 49 49 49 48 49 48 48 49 49 49 49 48 49 48 49 49 49 49 49 49 48 49 49 49 48 49 49 49 48 49 49 49 49 48 48 49 48 48 00 48 48 48 48 48 48 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 49 00 00 48 48 48 48 48
*/
