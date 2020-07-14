.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x91c1, %r11
clflush (%r11)
nop
nop
nop
nop
cmp $25442, %r10
movb $0x61, (%r11)
nop
nop
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x13b9a, %rsi
lea addresses_UC_ht+0xa19a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $58, %rcx
rep movsw
nop
nop
nop
nop
dec %rbp
lea addresses_A_ht+0xeb1a, %rbp
nop
nop
nop
nop
nop
and $17366, %r11
mov (%rbp), %bx
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_A_ht+0xf52d, %r11
clflush (%r11)
nop
dec %rcx
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rbp
nop
add %r11, %r11
lea addresses_WT_ht+0x1abba, %rsi
lea addresses_WC_ht+0x14d81, %rdi
nop
nop
nop
nop
nop
add $43479, %r10
mov $116, %rcx
rep movsl
cmp $49936, %rdx
lea addresses_WT_ht+0x17286, %rsi
lea addresses_UC_ht+0x902a, %rdi
nop
nop
nop
nop
sub %rbp, %rbp
mov $57, %rcx
rep movsb
nop
nop
cmp %r10, %r10
lea addresses_UC_ht+0x5fba, %rsi
lea addresses_D_ht+0x1b4da, %rdi
add $45247, %rbp
mov $49, %rcx
rep movsl
nop
sub $28454, %rdi
lea addresses_normal_ht+0x120fa, %rdi
clflush (%rdi)
nop
nop
add $35253, %rdx
mov (%rdi), %rbx
nop
nop
nop
add $37561, %r11
lea addresses_WT_ht+0x1339a, %r11
nop
dec %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
and $32131, %rdx
lea addresses_A_ht+0x137ba, %rdi
nop
nop
sub $63847, %r11
mov (%rdi), %ecx
nop
nop
nop
nop
xor $12141, %rdx
lea addresses_D_ht+0x10bba, %rsi
lea addresses_UC_ht+0xdbba, %rdi
add $44212, %rbx
mov $87, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1deba, %r10
nop
nop
nop
nop
nop
dec %rbp
mov (%r10), %rsi
nop
nop
nop
nop
and $30032, %rsi
lea addresses_normal_ht+0x15ae, %r10
nop
nop
nop
nop
nop
sub %r11, %r11
movw $0x6162, (%r10)
nop
and %rbp, %rbp
lea addresses_WT_ht+0x5fba, %rcx
nop
sub %rdx, %rdx
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_RW+0x127ba, %r9
nop
dec %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
add $10596, %r13

// Store
lea addresses_RW+0x127ba, %r8
nop
nop
nop
nop
nop
cmp $61697, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_D+0x4a7a, %rcx
nop
nop
nop
nop
cmp $38827, %r9
movb $0x51, (%rcx)
nop
nop
nop
nop
add $14460, %rsi

// Faulty Load
lea addresses_RW+0x127ba, %rsi
nop
and %rcx, %rcx
movb (%rsi), %al
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 288}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
