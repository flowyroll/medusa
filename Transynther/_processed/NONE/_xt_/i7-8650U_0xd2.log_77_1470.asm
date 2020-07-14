.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xdd89, %rsi
lea addresses_normal_ht+0x3229, %rdi
nop
nop
nop
nop
dec %r15
mov $74, %rcx
rep movsb
add %rsi, %rsi
lea addresses_normal_ht+0x1d749, %rsi
lea addresses_WT_ht+0x11b49, %rdi
nop
nop
nop
nop
nop
cmp $31217, %r13
mov $52, %rcx
rep movsb
nop
xor $46410, %rdi
lea addresses_UC_ht+0xb8d, %rsi
lea addresses_A_ht+0x1b8f1, %rdi
nop
add $25474, %r9
mov $119, %rcx
rep movsw
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rbp
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_RW+0xb349, %rdi
clflush (%rdi)
nop
dec %rbp
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'32': 77}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
