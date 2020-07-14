.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x13b11, %rsi
lea addresses_WT_ht+0x97cd, %rdi
nop
cmp %r9, %r9
mov $15, %rcx
rep movsw
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x4091, %rbx
nop
sub %r12, %r12
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
sub %rcx, %rcx
lea addresses_WT_ht+0x19111, %rdi
nop
nop
nop
nop
cmp $12841, %rdx
mov (%rdi), %r12w
nop
nop
nop
nop
nop
cmp $4184, %r9
lea addresses_UC_ht+0x17311, %r12
nop
nop
and $53287, %rsi
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm2
vpextrq $0, %xmm2, %r9
and $14523, %rdx
lea addresses_A_ht+0x6211, %rsi
lea addresses_UC_ht+0x2611, %rdi
nop
nop
inc %rbp
mov $92, %rcx
rep movsl
nop
nop
nop
nop
sub $57227, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0xb11, %rax
nop
nop
nop
nop
add $23748, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
and %rbp, %rbp

// Store
mov $0x4d1, %r11
nop
nop
nop
sub %r12, %r12
movb $0x51, (%r11)
and %rax, %rax

// Store
lea addresses_D+0x12f91, %rbp
xor %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%rbp)
nop
nop
nop
nop
nop
xor $6464, %r12

// Store
lea addresses_D+0x3027, %r11
nop
sub %r12, %r12
movl $0x51525354, (%r11)
and $18378, %rbp

// Store
mov $0x1a17810000000b11, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%rsi)
sub $40303, %r9

// Load
lea addresses_RW+0x8081, %rsi
nop
nop
sub $9082, %r11
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
xor $14021, %rsi

// Faulty Load
lea addresses_WT+0x12311, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %r12, %r12
mov (%r9), %bp
lea oracles, %rbp
and $0xff, %rbp
shlq $12, %rbp
mov (%rbp,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'45': 1}
45
*/
