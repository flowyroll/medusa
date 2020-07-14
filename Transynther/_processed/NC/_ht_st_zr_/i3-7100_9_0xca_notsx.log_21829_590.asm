.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e8f9, %rsi
lea addresses_normal_ht+0x1b0f9, %rdi
nop
nop
nop
nop
lfence
mov $21, %rcx
rep movsq
sub $42164, %r15
lea addresses_WC_ht+0x7479, %rcx
nop
nop
add $33356, %rax
movw $0x6162, (%rcx)
nop
nop
nop
sub $45322, %r15
lea addresses_UC_ht+0x10f79, %rsi
lea addresses_WC_ht+0x7a4, %rdi
nop
nop
nop
nop
xor %rax, %rax
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
add $55457, %rax
lea addresses_UC_ht+0xd9f9, %rsi
lea addresses_UC_ht+0xd079, %rdi
nop
xor %r12, %r12
mov $98, %rcx
rep movsq
nop
cmp $57496, %rax
lea addresses_normal_ht+0xdc19, %rsi
lea addresses_WC_ht+0xd779, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r11
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x19b09, %rsi
lea addresses_UC_ht+0x3dc9, %rdi
nop
nop
sub %r11, %r11
mov $83, %rcx
rep movsw
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x4c79, %rsi
sub $14815, %r15
movw $0x6162, (%rsi)
nop
cmp $50214, %r15
lea addresses_normal_ht+0x1c3a9, %rcx
and %r14, %r14
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x18679, %rsi
lea addresses_UC_ht+0x1b3a9, %rdi
cmp %r12, %r12
mov $2, %rcx
rep movsl
nop
nop
inc %r15
lea addresses_normal_ht+0x14879, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
mfence
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
nop
sub $48121, %r14
lea addresses_A_ht+0x1e379, %rsi
nop
nop
nop
nop
sub %r12, %r12
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x17189, %rsi
lea addresses_WT_ht+0xd4f9, %rdi
nop
nop
nop
nop
nop
add $24854, %r11
mov $28, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x10e79, %r14
nop
nop
add %rdi, %rdi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
add $39761, %r14
lea addresses_normal_ht+0x1e879, %rsi
lea addresses_UC_ht+0x1d279, %rdi
nop
nop
and $40925, %r12
mov $28, %rcx
rep movsw
sub %r11, %r11
lea addresses_WC_ht+0x2079, %r11
nop
nop
nop
add %rcx, %rcx
mov (%r11), %edi
nop
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x6591, %rsi
lea addresses_A+0x1bf97, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
and $14760, %rsi

// Faulty Load
mov $0x6e6e1d0000000079, %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%rsi), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 17388, '00': 4375, '40': 66}
34 34 34 34 34 34 00 34 00 34 34 34 00 34 34 34 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 00 34 34 34 34 34 34 00 34 34 34 34 00 34 00 00 34 00 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 00 00 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 00 34 34 34 34 34 34 34 34 34 34 00 00 00 34 34 34 00 34 34 34 34 00 34 00 34 34 34 34 34 34 00 34 34 34 34 00 34 00 34 34 00 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 34 34 34 34 34 34 00 00 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 00 34 00 00 34 34 34 34 34 34 34 34 00 00 34 34 34 34 34 34 00 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 34 00 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 00 34 34 34 34 34 34 00 34 00 34 34 34 00 00 34 34 00 34 34 00 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 00 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 00 34 34 00 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 00 34 34 34 34 00 34 00 00 34 34 34 00 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 00 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 00 34 34 34 00 00 34 34 34 34 34 34 00 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 34 00 34 34 34 34 34 34 34 00 34 00 34 00 00 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 00 34 34 34 34 00 00 34 34 34 34 34 34 34 00 34 00 34 00 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 00 34 34 34 34 34 34 00 34 00 34 34 00 34 34 00 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 34 34 34 00 34 34 34 34 00 34 00 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 00 00 34 34 34 34 00 34 34 34 00 34 34 00 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 00 34 34 34 00 00 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 34 00 00 34 34 34 34 34 34 34 00 34 00 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 00 34 34 34 34 00 34 00 34 34 34
*/
