.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19300, %rsi
lea addresses_normal_ht+0x1e940, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $35, %rcx
rep movsw
sub %rax, %rax
lea addresses_WT_ht+0x17b1c, %rsi
lea addresses_normal_ht+0x1e8c0, %rdi
cmp $54999, %r9
mov $56, %rcx
rep movsw
nop
and $40231, %rax
lea addresses_UC_ht+0x15720, %rsi
lea addresses_normal_ht+0x4ff4, %rdi
nop
nop
nop
nop
xor $26670, %r10
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_US+0x4d40, %rax
clflush (%rax)
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rax)
add $59422, %rax

// Store
lea addresses_WT+0x7440, %rdi
nop
nop
nop
nop
nop
xor $57598, %r13
movb $0x51, (%rdi)
nop
sub $48961, %r11

// Faulty Load
lea addresses_normal+0xdb00, %rcx
nop
nop
sub $1034, %rbp
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'34': 3}
34 34 34
*/
