.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10ece, %rsi
lea addresses_A_ht+0x12daa, %rdi
nop
nop
xor $8083, %r11
mov $117, %rcx
rep movsb
nop
sub $64538, %r14
lea addresses_D_ht+0x4d3, %r11
nop
nop
and %r15, %r15
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
sub $7009, %rdi
lea addresses_A_ht+0x834e, %r15
nop
nop
add $33307, %rbp
mov $0x6162636465666768, %r11
movq %r11, (%r15)
add $6671, %r15
lea addresses_A_ht+0x514e, %rsi
lea addresses_WT_ht+0x1b94e, %rdi
nop
nop
nop
cmp $60044, %r9
mov $89, %rcx
rep movsq
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xe93a, %rsi
lea addresses_normal_ht+0x1514e, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $20, %rcx
rep movsl
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x1e00c, %rcx
nop
and %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0xd98e, %rcx
nop
nop
nop
xor %rbp, %rbp
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
inc %r15
lea addresses_A_ht+0x164ce, %rsi
lea addresses_WT_ht+0x294e, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $101, %rcx
rep movsq
nop
xor $59352, %r14
lea addresses_WT_ht+0x1ab5e, %rsi
lea addresses_normal_ht+0x196ce, %rdi
nop
inc %r11
mov $50, %rcx
rep movsq
sub $48951, %r14
lea addresses_normal_ht+0xd14e, %rsi
lea addresses_WT_ht+0xce, %rdi
clflush (%rdi)
nop
xor $54657, %r9
mov $110, %rcx
rep movsw
and $32859, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rdx

// Store
mov $0x146baa0000000d4e, %r8
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
cmp $16312, %r8

// Load
lea addresses_RW+0xbd8e, %r8
nop
nop
sub %rbp, %rbp
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
add %r8, %r8

// Faulty Load
mov $0x146baa0000000d4e, %r14
nop
dec %r15
movups (%r14), %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': True, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'44': 17908, '46': 3326, '00': 508, '42': 1, '45': 83, '6e': 1, 'ff': 2}
44 44 44 46 46 44 44 46 44 44 44 46 44 44 44 44 44 46 00 44 44 44 44 44 00 44 44 46 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 46 44 44 44 44 46 44 44 44 44 44 46 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 46 44 46 44 44 44 44 44 44 44 46 44 46 46 46 44 44 44 46 46 46 46 44 44 44 44 44 44 44 44 44 44 44 46 00 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 46 00 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 44 46 44 44 44 46 44 46 44 46 44 44 44 46 46 44 44 44 44 44 44 46 44 44 46 46 46 44 44 46 44 46 44 44 00 44 44 44 44 46 44 44 44 44 44 46 44 46 44 46 44 44 44 46 46 44 44 44 44 44 46 44 44 44 44 46 44 44 46 44 44 44 44 00 44 44 44 44 44 44 46 44 46 44 44 44 00 44 44 44 44 44 44 46 44 44 46 46 44 46 44 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 45 44 44 44 44 46 44 44 44 46 46 46 44 46 44 44 46 44 44 44 46 46 46 44 44 44 46 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 45 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 46 46 44 44 44 44 44 44 44 46 46 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 46 44 44 44 44 46 46 46 46 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 46 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 46 46 44 44 44 46 46 44 44 46 44 44 44 44 44 44 44 46 46 46 44 46 44 44 44 44 44 44 46 44 44 44 44 44 00 44 46 44 44 44 44 44 44 44 44 46 44 44 46 46 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 46 44 44 46 44 46 44 44 42 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 46 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 46 44 44 44 44 00 46 44 46 44 44 44 44 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 00 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 46 46 44 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 46 44 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 44 44 46 46 44 44 46 44 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44 46 44 44 44 44 44 44 44 46 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44
*/
