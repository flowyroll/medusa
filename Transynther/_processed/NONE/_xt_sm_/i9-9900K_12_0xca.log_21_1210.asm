.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xdcc0, %rsi
lea addresses_WC_ht+0x196c0, %rdi
add $17077, %r15
mov $18, %rcx
rep movsl
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x1b9c0, %r9
nop
nop
nop
nop
xor %rax, %rax
mov (%r9), %r15
dec %r14
lea addresses_WT_ht+0xa340, %r9
nop
nop
cmp $35433, %rsi
movb (%r9), %r15b
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1a920, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $29663, %rsi
movb $0x61, (%r9)
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x120a0, %rsi
nop
nop
and $58649, %rdi
mov (%rsi), %ax
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0xe920, %r9
nop
nop
nop
dec %r14
mov (%r9), %r15w
nop
nop
nop
nop
nop
and $1240, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x1c920, %rsi
nop
nop
nop
nop
nop
cmp $55192, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
sub %r12, %r12

// Store
mov $0x520, %rbp
nop
nop
nop
nop
nop
and $40440, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rbp)
and %rdx, %rdx

// Store
lea addresses_WC+0x51fe, %rbp
nop
nop
nop
xor $56458, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
add %rbp, %rbp

// Faulty Load
lea addresses_RW+0x1c920, %rdx
and %r11, %r11
mov (%rdx), %di
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'58': 21}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
