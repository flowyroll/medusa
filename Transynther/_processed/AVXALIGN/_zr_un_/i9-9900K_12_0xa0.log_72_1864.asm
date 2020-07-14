.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xca44, %rsi
lea addresses_normal_ht+0x1b4b4, %rdi
clflush (%rdi)
nop
nop
add $39602, %r8
mov $112, %rcx
rep movsq
cmp %rdx, %rdx
lea addresses_D_ht+0x12644, %r8
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
sub %rcx, %rcx
lea addresses_A_ht+0x1464, %rsi
lea addresses_UC_ht+0x1b464, %rdi
nop
nop
sub $30390, %r8
mov $35, %rcx
rep movsw
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_PSE+0x3364, %rdi
nop
and $37721, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
and %rax, %rax

// Faulty Load
lea addresses_D+0x19764, %r8
and %rsi, %rsi
vmovntdqa (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'04': 1, '00': 67, '72': 4}
04 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 00 00 00 72
*/
