.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1158c, %rsi
lea addresses_A_ht+0x172cc, %rdi
nop
nop
nop
nop
dec %r11
mov $86, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x274c, %rbx
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rbp
movq %rbp, (%rbx)
nop
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0xd548, %rsi
lea addresses_A_ht+0xaecc, %rdi
clflush (%rdi)
nop
nop
add $25404, %rax
mov $24, %rcx
rep movsw
nop
nop
nop
nop
dec %r11
lea addresses_UC_ht+0xf6f9, %rsi
lea addresses_UC_ht+0x176dc, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $8318, %rdi
lea addresses_UC_ht+0x1dd4c, %rsi
lea addresses_UC_ht+0x1920c, %rdi
nop
nop
cmp %r15, %r15
mov $11, %rcx
rep movsb
nop
and $5786, %rbp
lea addresses_WT_ht+0x17ecc, %r15
nop
nop
nop
xor %rax, %rax
movb $0x61, (%r15)
nop
nop
nop
nop
cmp $919, %rdi
lea addresses_D_ht+0x17e6c, %rcx
nop
nop
nop
inc %r11
movb $0x61, (%rcx)
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1b58c, %rbx
nop
nop
nop
sub $22022, %rbp
movb $0x61, (%rbx)
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x360c, %rsi
lea addresses_D_ht+0x118cc, %rdi
nop
nop
nop
and %rbp, %rbp
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x134cc, %rdi
and %rbp, %rbp
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
cmp $22974, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_PSE+0xd9bc, %r10
nop
nop
xor %rax, %rax
movb $0x51, (%r10)
nop
nop
xor %r15, %r15

// Load
lea addresses_PSE+0xfccc, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
xor $55762, %r15
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
and $12404, %rax

// Faulty Load
mov $0x4cc, %r13
nop
nop
nop
nop
nop
xor $3301, %r10
mov (%r13), %esi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'00': 1}
00
*/
