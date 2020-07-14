.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x179c0, %rsi
lea addresses_A_ht+0x1d057, %rdi
clflush (%rsi)
nop
nop
nop
sub $49124, %rbx
mov $16, %rcx
rep movsq
nop
nop
nop
and $58742, %rax
lea addresses_D_ht+0x118f7, %rsi
lea addresses_UC_ht+0x1ecf7, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $64, %rcx
rep movsw
nop
nop
add $726, %rbx
lea addresses_normal_ht+0xdaf7, %rsi
lea addresses_WC_ht+0x7517, %rdi
nop
nop
nop
add %r11, %r11
mov $33, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1acf7, %rsi
lea addresses_D_ht+0x1297, %rdi
nop
nop
xor %r9, %r9
mov $108, %rcx
rep movsq
nop
xor $16587, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rdi
push %rsi

// Load
mov $0xcf7, %rbx
nop
sub $8270, %rax
vmovups (%rbx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
cmp $8252, %rbx

// Store
lea addresses_normal+0x66f7, %r12
nop
nop
nop
add $15450, %rax
movb $0x51, (%r12)
cmp %r12, %r12

// Store
mov $0x49b92b00000002f7, %r9
nop
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r9)
nop
nop
xor $5615, %r8

// Faulty Load
mov $0xcf7, %r12
nop
xor $41859, %r8
mov (%r12), %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'3a': 1, '34': 1}
34 3a
*/
