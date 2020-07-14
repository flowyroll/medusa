.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12a4e, %r13
nop
nop
nop
nop
nop
add $45430, %rbp
mov (%r13), %rbx
lfence
lea addresses_normal_ht+0x157d2, %rsi
lea addresses_UC_ht+0x1b39f, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $25, %rcx
rep movsw
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_RW+0x127d2, %rbp
nop
nop
nop
xor %r15, %r15
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and $8252, %r15

// Faulty Load
lea addresses_WC+0x1ffd2, %rbx
inc %r9
vmovaps (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'44': 15}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
