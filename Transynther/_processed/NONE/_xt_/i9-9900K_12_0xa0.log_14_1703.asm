.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1346e, %r11
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r11)
nop
and %r13, %r13
lea addresses_UC_ht+0x1b59e, %r9
xor $51084, %r15
movups (%r9), %xmm1
vpextrq $1, %xmm1, %r8
nop
sub %r13, %r13
lea addresses_A_ht+0xc94e, %r9
xor $11604, %r12
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
nop
dec %r12
lea addresses_normal_ht+0x294, %r11
nop
nop
nop
nop
and %rsi, %rsi
mov (%r11), %r13d
nop
cmp %r15, %r15
lea addresses_D_ht+0xc19e, %r9
nop
dec %r15
mov $0x6162636465666768, %r12
movq %r12, (%r9)
nop
nop
xor $15525, %r11
lea addresses_normal_ht+0xbf03, %r13
nop
nop
nop
nop
dec %r11
mov (%r13), %r8
nop
nop
add $12, %r12
lea addresses_WC_ht+0x419e, %rsi
lea addresses_A_ht+0xcda6, %rdi
nop
nop
add %r11, %r11
mov $66, %rcx
rep movsb
nop
xor $57143, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_US+0x13b9e, %rbx
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
sub $14049, %rcx

// Store
lea addresses_WT+0x1c28c, %rcx
nop
nop
nop
nop
dec %r11
movb $0x51, (%rcx)
nop
nop
inc %rcx

// Faulty Load
lea addresses_D+0x1e59e, %r13
nop
add %r9, %r9
mov (%r13), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'36': 14}
36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
