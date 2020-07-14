.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x3d3f, %rsi
nop
nop
nop
nop
nop
cmp $45858, %r10
movb $0x61, (%rsi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x4bff, %rsi
lea addresses_A_ht+0xe20f, %rdi
nop
nop
nop
nop
nop
sub $32144, %r12
mov $115, %rcx
rep movsw
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x15cf, %r15
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
and %rdi, %rdi
lea addresses_D_ht+0x1929d, %rcx
nop
nop
nop
nop
nop
add $25767, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rcx)
sub $38854, %r10
lea addresses_WC_ht+0xfd5f, %rsi
nop
inc %rcx
mov (%rsi), %r10d
add %rcx, %rcx
lea addresses_UC_ht+0x1eff3, %r12
nop
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r12)
nop
nop
lfence
lea addresses_D_ht+0x1695f, %rdi
nop
inc %rdx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and $20190, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rsi

// Store
lea addresses_normal+0x1a9ff, %r8
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_US+0x1a1ff, %r11
nop
nop
nop
nop
nop
add %r13, %r13
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'48': 12767, '00': 9062}
00 00 48 48 48 48 00 48 48 00 48 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 00 00 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 00 00 48 00 48 00 48 00 48 48 48 48 48 00 00 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 00 48 00 48 48 00 48 48 00 48 00 00 48 48 00 48 00 00 48 48 48 00 48 48 48 00 00 00 48 00 48 48 48 48 48 48 48 48 48 00 00 00 00 00 48 48 48 48 00 00 00 48 00 00 48 00 48 00 48 48 48 48 48 00 00 00 00 48 48 00 48 00 48 48 48 00 48 00 48 48 00 48 48 00 48 48 48 00 00 48 00 00 00 48 48 00 48 00 48 00 48 00 48 48 48 48 48 00 00 48 48 48 48 00 48 00 48 00 00 48 48 00 00 00 48 48 00 48 00 48 48 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 48 48 00 00 48 00 48 00 48 00 48 00 48 48 00 00 48 00 00 48 48 00 00 48 00 00 00 48 00 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 00 48 48 48 00 00 48 00 48 00 00 48 48 00 48 00 00 00 00 48 00 00 48 48 48 00 48 48 48 48 48 48 00 00 00 00 48 48 00 48 00 00 48 00 48 48 00 00 00 48 48 48 48 00 48 00 48 48 00 48 48 48 48 00 00 00 48 48 00 48 00 48 48 48 48 48 00 00 48 00 00 48 48 48 00 48 48 00 00 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 00 00 00 00 48 00 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 00 00 48 00 48 48 00 48 00 48 48 48 48 48 00 48 48 00 48 00 00 48 48 00 48 48 48 00 00 00 48 48 00 48 48 48 00 48 00 00 00 00 00 00 48 00 48 00 48 48 48 00 48 00 48 48 00 48 00 48 00 48 48 00 00 48 00 00 00 00 48 48 00 48 00 48 48 48 48 48 00 00 48 00 48 00 48 48 00 48 00 48 48 48 48 00 48 00 00 48 48 00 48 00 00 48 48 48 00 48 00 00 48 48 00 48 00 48 00 00 48 00 00 48 00 48 48 00 48 48 00 00 48 00 00 00 00 48 00 00 48 00 48 48 00 00 00 48 00 48 00 00 48 00 48 48 48 00 48 48 48 48 00 00 00 48 00 48 00 00 48 00 00 48 00 00 00 48 48 00 00 00 00 48 00 48 48 48 00 48 48 48 48 48 00 48 48 00 00 00 00 00 48 48 00 48 00 48 00 48 48 48 48 00 00 48 48 48 48 00 00 00 48 48 48 48 48 48 00 48 48 00 48 48 00 48 00 00 00 00 00 00 48 00 48 48 00 48 48 48 48 00 48 00 48 48 48 48 00 48 00 48 48 48 48 00 48 00 48 00 00 00 48 00 00 48 00 48 00 48 48 00 00 48 48 00 00 48 48 48 48 48 48 48 00 48 00 48 00 48 00 48 48 48 00 00 48 00 48 00 00 48 48 48 48 48 48 00 48 00 48 48 48 00 00 48 00 48 48 00 00 48 00 00 48 00 48 00 00 48 00 48 48 48 48 48 00 00 00 48 48 00 00 48 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 48 48 00 48 00 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 48 00 00 48 00 00 48 00 48 00 00 00 00 48 48 48 00 48 48 00 00 48 00 48 48 48 48 48 48 48 00 48 00 00 48 48 00 00 48 48 48 00 00 48 00 48 00 00 00 00 48 48 00 48 00 00 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 00 48 00 48 00 00 48 00 48 48 48 48 48 48 48 00 00 48 00 48 00 48 00 00 48 48 00 48 48 48 00 48 00 00 48 00 48 00 00 00 48 00 00 48 48 00 48 00 48 48 48 00 48 00 00 48 00 48 00 00 48 00 48 00 00 00 00 00 48 00 48 00 48 00 48 48 48 48 48 00 00 00 00 48 48 00 48 00 48 00 00 48 00 48 00 48 00 48 48 00 00
*/
