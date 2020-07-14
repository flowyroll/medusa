.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e571, %rsi
lea addresses_WC_ht+0x16e71, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $80, %rcx
rep movsq
and %rsi, %rsi
lea addresses_UC_ht+0x3e71, %r13
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%r13)
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0x4471, %rbx
sub $31490, %rcx
movl $0x61626364, (%rbx)
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x8eb1, %r13
and $30922, %rax
movb (%r13), %bl
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x19571, %rsi
add %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%rsi)
nop
nop
add $18613, %rcx
lea addresses_WC_ht+0x9e51, %rsi
lea addresses_WC_ht+0x1b271, %rdi
nop
nop
nop
nop
inc %r14
mov $65, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x18cb1, %rsi
lea addresses_A_ht+0x4109, %rdi
nop
xor $50689, %rax
mov $104, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1b64a, %rsi
lea addresses_A_ht+0xb511, %rdi
sub %rbx, %rbx
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x8f71, %rdi
nop
nop
nop
and $53227, %rax
movb $0x61, (%rdi)
nop
cmp $63917, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rdi
push %rsi

// Faulty Load
lea addresses_A+0xa71, %rdi
nop
nop
add $41627, %r15
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rdi
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'46': 2350, '38': 1, '84': 1, '00': 10942, '48': 6784, '45': 1750, 'b8': 1}
46 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 48 48 48 00 00 00 48 00 46 00 48 48 00 48 00 00 45 46 00 45 45 45 45 48 48 45 46 48 00 00 48 00 00 00 45 00 00 00 48 00 00 00 48 48 00 48 00 00 48 00 48 00 00 45 00 48 48 00 00 48 00 00 00 00 00 00 48 00 48 48 00 48 48 48 48 00 00 00 48 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 48 00 48 48 00 00 00 48 48 00 48 00 00 00 00 48 48 00 48 48 00 00 48 48 00 48 48 00 48 00 00 00 00 48 48 46 00 00 48 48 00 00 00 00 48 00 48 00 00 48 00 45 48 48 48 46 00 00 00 45 00 48 00 00 00 00 00 48 48 00 00 00 48 00 48 00 00 48 48 00 48 45 00 48 00 48 00 00 48 48 46 00 48 48 00 48 00 00 48 00 48 00 00 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 00 45 45 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 48 46 00 00 48 00 00 00 48 48 48 00 48 00 00 00 00 00 00 48 48 48 00 48 46 46 45 45 45 46 00 45 48 45 48 00 46 48 48 46 46 45 45 45 48 48 45 45 46 46 46 45 45 45 48 46 48 48 45 46 45 48 48 48 00 48 00 00 00 00 00 00 00 00 48 00 00 48 48 00 48 46 00 48 00 00 00 48 48 48 00 00 46 00 00 45 48 00 00 48 00 48 00 00 48 00 00 48 00 48 00 45 00 00 00 00 00 48 00 00 00 00 00 48 48 48 00 48 48 00 48 48 48 00 00 48 00 00 00 45 48 48 00 48 48 00 00 48 48 00 48 48 00 00 48 00 48 00 00 00 00 00 48 00 00 00 48 46 00 00 00 00 00 00 00 00 48 48 46 00 00 48 00 48 48 46 00 00 48 48 00 00 48 00 48 48 00 00 48 48 48 00 48 48 46 46 45 48 46 48 45 46 46 45 48 48 48 45 46 45 46 45 46 45 48 45 46 48 45 46 46 45 48 48 45 46 46 46 45 48 46 46 45 45 45 45 48 48 45 48 46 46 45 45 48 45 46 46 00 46 45 46 45 48 45 46 46 46 46 45 48 48 45 46 48 48 46 48 48 48 46 48 46 48 48 45 46 46 45 46 48 48 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 46 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 48 48 00 00 48 00 00 48 46 00 48 00 00 48 00 48 48 00 00 00 48 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 48 46 48 00 00 00 48 48 46 00 00 00 00 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 46 00 00 00 00 48 00 00 48 48 00 00 48 00 00 48 48 48 48 00 48 00 00 48 00 00 48 00 45 00 48 00 00 48 00 00 00 48 48 00 48 48 46 00 00 00 00 48 00 00 00 48 48 46 00 00 48 48 00 48 48 00 00 48 00 00 00 48 46 00 48 00 00 00 00 48 00 00 48 48 00 48 00 00 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 48 48 00 00 48 00 48 48 00 48 48 00 00 48 46 48 48 00 00 00 48 00 00 00 48 00 00 00 00 00 48 48 48 00 00 48 00 00 00 48 00 00 48 48 00 00 48 00 00 00 48 48 00 48 00 00 00 45 48 48 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 48 00 48 00 48 46 00 48 00 00 00 48 00 00 00 00 00 48 46 00 00 48 00 48 45 45 48 48 48 45 46 46 48 00 00 00 48 48 00 00 46 00 00 48 00 00 00 48 48 48 48 00 48 00 48 00 00 48 00 48 48 46 00 00 00 48 00 48 48 00 00 00 00 00 00 48 00 00 00 48 00 00
*/
