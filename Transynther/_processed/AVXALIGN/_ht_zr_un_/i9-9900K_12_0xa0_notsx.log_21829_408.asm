.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19a8a, %rsi
lea addresses_WC_ht+0x2362, %rdi
nop
nop
inc %rbp
mov $71, %rcx
rep movsl
nop
nop
add $18492, %r12
lea addresses_WT_ht+0xa38a, %rsi
lea addresses_WT_ht+0x808a, %rdi
nop
nop
nop
nop
nop
sub $26413, %r11
mov $112, %rcx
rep movsl
inc %rbp
lea addresses_A_ht+0xb7ea, %rsi
lea addresses_A_ht+0x1000a, %rdi
xor $42245, %r14
mov $121, %rcx
rep movsb
nop
nop
nop
cmp $54834, %r12
lea addresses_WT_ht+0x27ca, %r14
nop
nop
nop
nop
sub $38023, %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x51ca, %rbp
nop
nop
and $13736, %rsi
mov (%rbp), %r14d
dec %rbp
lea addresses_WT_ht+0x204a, %rsi
lea addresses_normal_ht+0xef1a, %rdi
cmp $30774, %r8
mov $68, %rcx
rep movsb
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x1688a, %r11
nop
nop
nop
add $59741, %r8
mov (%r11), %bp
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x13c8a, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r8
mov (%rdi), %ebp
nop
nop
cmp $37160, %r14
lea addresses_UC_ht+0xfecf, %r12
nop
nop
nop
cmp %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, (%r12)
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0x446e, %rsi
lea addresses_WC_ht+0x1ec8a, %rdi
nop
nop
nop
nop
nop
cmp $64593, %r14
mov $43, %rcx
rep movsl
nop
nop
and $51063, %rdi
lea addresses_D_ht+0x1488a, %rsi
lea addresses_normal_ht+0x11b78, %rdi
nop
nop
nop
cmp %r14, %r14
mov $69, %rcx
rep movsb
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_RW+0x88a, %rax
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movaps %xmm0, (%rax)
add %rbx, %rbx

// Faulty Load
lea addresses_normal+0x1e08a, %rsi
xor %rbx, %rbx
movaps (%rsi), %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'08': 48, '19': 1, '45': 2242, '78': 57, '72': 28, '46': 1094, '49': 801, '00': 17558}
78 00 46 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 08 00 00 45 00 00 00 00 00 49 00 46 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 49 00 45 45 49 00 00 00 00 45 00 45 45 45 00 00 45 00 45 45 00 00 46 00 00 49 45 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 45 00 00 46 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 49 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 45 00 46 00 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 49 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 46 00 00 00 00 45 00 45 00 00 00 46 00 00 45 00 00 00 00 00 00 46 00 46 00 46 00 00 00 45 00 00 00 45 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 46 45 00 00 00 45 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 46 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 46 46 00 46 00 45 45 00 00 45 00 00 49 00 00 00 00 00 00 00 45 00 45 00 00 00 46 00 00 45 00 00 00 00 00 00 00 46 45 00 00 00 00 46 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 45 00 46 00 00 78 00 00 49 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 45 00 00 00 45 45 00 00 45 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 45 45 00 00 00 00 00 00 00 00 00 00 00 00 46 00 49 00 00 00 00 00 00 00 00 45 46 00 00 00 00 00 00 00 45 00 45 00 46 00 00 46 00 00 00 45 45 00 00 49 00 00 00 00 45 00 46 00 00 00 00 00 46 00 00 45 45 45 00 00 00 46 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 46 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 46 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 49 00 00 00 00 00 49 00 46 00 00 00 46 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 00 00 49 00 00 00 00 00 00 45 45 49 00 00 45 00 00 00 00 00 00 00 45 45 46 00 00 00 00 49 46 45 45 45 00 46 00 00 00 00 45 00 00 00 00 45 00 00 45 00 46 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 46 46 00 00
*/
