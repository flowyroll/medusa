.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
lea addresses_UC_ht+0x24af, %r9
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r9)
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x16c6f, %rcx
nop
nop
nop
nop
add %rdi, %rdi
mov (%rcx), %rbx
nop
nop
sub %rdi, %rdi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x8e83, %r11
nop
inc %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
xor $21196, %rdi

// Load
mov $0x23557a000000050f, %r11
and %rsi, %rsi
movb (%r11), %cl
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_A+0x86b3, %r14
nop
nop
dec %rcx
movb $0x51, (%r14)
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_normal+0x1304f, %rcx
nop
cmp $1912, %r14
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)

// Exception!!!
nop
mov (0), %rcx
nop
nop
nop
nop
add $34734, %rdi

// Store
lea addresses_WC+0xca4f, %r10
nop
nop
nop
add $12886, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
xor $58534, %rbp

// Load
lea addresses_PSE+0x15c4f, %rbp
nop
nop
nop
xor %rcx, %rcx
movb (%rbp), %r10b
nop
nop
nop
nop
inc %rbp

// Faulty Load
lea addresses_WT+0x7c4f, %rsi
nop
nop
nop
sub %rdi, %rdi
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'19': 1, 'f7': 1, '7b': 6}
7b 7b 7b 7b 7b 19 7b f7
*/
