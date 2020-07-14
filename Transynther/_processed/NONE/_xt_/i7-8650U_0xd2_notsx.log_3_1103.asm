.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x31ab, %rsi
lea addresses_normal_ht+0x1618b, %rdi
nop
nop
nop
add $62754, %r12
mov $87, %rcx
rep movsq
xor $57830, %r12
lea addresses_WT_ht+0x16fcb, %rax
nop
nop
nop
cmp %r11, %r11
movb (%rax), %bl
nop
nop
nop
cmp $46767, %rcx
lea addresses_UC_ht+0x1c5cb, %r11
nop
nop
nop
nop
nop
cmp $57625, %rdi
mov (%r11), %ecx
nop
nop
nop
nop
cmp $15593, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Store
mov $0x827, %r13
nop
and $51598, %rcx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
add $24192, %r15

// Faulty Load
lea addresses_D+0x1c2cb, %rdi
nop
nop
nop
cmp %r10, %r10
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdi
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
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'36': 3}
36 36 36
*/
