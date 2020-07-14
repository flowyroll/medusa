.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x34f5, %r12
nop
nop
nop
nop
nop
dec %r11
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0xc495, %r14
nop
sub $3688, %r10
movw $0x6162, (%r14)
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x8bb5, %rsi
nop
nop
nop
nop
nop
and $888, %r14
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r11
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1acf5, %rsi
lea addresses_normal_ht+0x68f5, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $100, %rcx
rep movsw
cmp $3202, %rcx
lea addresses_UC_ht+0x50f5, %rsi
lea addresses_normal_ht+0x114f5, %rdi
dec %r12
mov $60, %rcx
rep movsl
xor %rsi, %rsi
lea addresses_normal_ht+0xed75, %r14
nop
nop
nop
cmp $43235, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %r14
vmovaps %ymm7, (%r14)
nop
nop
nop
nop
nop
sub $43679, %r12
lea addresses_WC_ht+0xa275, %r10
nop
nop
add $3237, %rdi
mov (%r10), %esi
nop
nop
nop
nop
nop
cmp $55081, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0x31bd, %r12
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r12)
xor $50921, %rdx

// Store
lea addresses_UC+0x1848d, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movntdq %xmm2, (%rcx)
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0x16555, %rbx
nop
nop
nop
nop
nop
sub $47681, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
inc %rax

// Store
lea addresses_WT+0x38f5, %r14
nop
sub %rax, %rax
movb $0x51, (%r14)
nop
sub $29719, %r12

// Faulty Load
lea addresses_UC+0x1bcf5, %r12
nop
dec %rdx
movups (%r12), %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'44': 21004, '47': 315, '08': 2, 'ff': 1, '00': 507}
44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 47 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
