.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x4cf3, %rsi
lea addresses_WT_ht+0x1da23, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $46, %rcx
rep movsq
add $9495, %r9
lea addresses_UC_ht+0x9087, %rbx
dec %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
nop
and $65184, %rbx
lea addresses_normal_ht+0x11599, %rbx
nop
nop
nop
add $52993, %rsi
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x66f3, %rsi
lea addresses_WT_ht+0x13f3, %rdi
sub $10675, %r8
mov $53, %rcx
rep movsl
and %rdx, %rdx
lea addresses_D_ht+0x11817, %rdx
nop
inc %r9
movb (%rdx), %cl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0xfdf3, %rdi
clflush (%rdi)
nop
nop
dec %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0x6513, %r9
nop
nop
nop
sub $33139, %rsi
mov (%r9), %edi
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x81c3, %rsi
lea addresses_UC_ht+0x1a1eb, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $29842, %r12
mov $68, %rcx
rep movsl
nop
nop
nop
nop
sub $49742, %r12
lea addresses_WT_ht+0x11bff, %rsi
lea addresses_UC_ht+0x61b, %rdi
nop
nop
nop
nop
nop
cmp $1089, %rdx
mov $60, %rcx
rep movsb
nop
and %r8, %r8
lea addresses_UC_ht+0x127f3, %rsi
lea addresses_D_ht+0x1d5b3, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $83, %rcx
rep movsb
nop
and $15790, %rdx
lea addresses_D_ht+0x167f3, %r12
nop
nop
nop
nop
cmp $41942, %rbx
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm4
vpextrq $0, %xmm4, %rdx
nop
xor $51279, %rsi
lea addresses_WC_ht+0x989b, %rsi
lea addresses_normal_ht+0x1abf3, %rdi
nop
nop
nop
nop
sub %r9, %r9
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1ecf3, %rsi
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rsi)
and $52880, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rbx

// Store
lea addresses_WT+0x1f3db, %r12
nop
add %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
nop
sub %r12, %r12

// Faulty Load
mov $0x7c73b20000000ff3, %rbx
nop
and $43409, %rax
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 8}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
