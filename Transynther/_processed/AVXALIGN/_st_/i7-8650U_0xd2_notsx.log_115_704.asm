.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x7e01, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%r12)
nop
dec %rcx
lea addresses_UC_ht+0x9b31, %rsi
lea addresses_WT_ht+0x1ca41, %rdi
nop
nop
nop
nop
inc %rbp
mov $123, %rcx
rep movsq
nop
nop
nop
nop
sub $27451, %rsi
lea addresses_normal_ht+0x10d25, %rsi
lea addresses_D_ht+0x181f1, %rdi
nop
nop
sub $50940, %rdx
mov $99, %rcx
rep movsw
sub $35037, %rdx
lea addresses_normal_ht+0xf70d, %rsi
xor $39511, %rdx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0xbe01, %rsi
nop
add $25624, %rdx
mov (%rsi), %ebp
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x18a01, %rsi
lea addresses_WT+0x1a941, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $38, %rcx
rep movsb
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_UC+0x29c9, %r12
nop
nop
add $57305, %r11
movw $0x5152, (%r12)
cmp $42650, %rcx

// Store
lea addresses_PSE+0x5701, %r10
nop
nop
nop
nop
sub $1510, %r12
movw $0x5152, (%r10)
nop
nop
nop
cmp $52443, %rcx

// REPMOV
lea addresses_UC+0x52c1, %rsi
lea addresses_D+0x96c9, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $37, %rcx
rep movsq
nop
nop
cmp %rdi, %rdi

// Store
mov $0x2a424400000001a1, %r12
nop
sub $57286, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_RW+0xe01, %rcx
nop
add %r12, %r12
mov (%rcx), %edi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'32': 115}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
