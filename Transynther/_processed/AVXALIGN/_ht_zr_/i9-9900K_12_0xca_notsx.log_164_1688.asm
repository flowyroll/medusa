.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1cbaf, %r8
nop
cmp %r12, %r12
movw $0x6162, (%r8)
dec %rdi
lea addresses_WT_ht+0x1b6ef, %rsi
lea addresses_WT_ht+0x19607, %rdi
nop
nop
and %r9, %r9
mov $0, %rcx
rep movsw
cmp %rcx, %rcx
lea addresses_UC_ht+0x102f, %r9
nop
nop
xor $5069, %r11
mov (%r9), %rsi
nop
nop
add $28010, %r8
lea addresses_UC_ht+0x1a9af, %rdi
nop
nop
nop
nop
cmp $220, %rcx
mov (%rdi), %r12
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x1558d, %rsi
lea addresses_A_ht+0x1e5af, %rdi
cmp $16680, %r14
mov $1, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x1bbff, %rsi
lea addresses_UC_ht+0x192ef, %rdi
clflush (%rdi)
nop
sub $41118, %r14
mov $93, %rcx
rep movsq
nop
nop
inc %rsi
lea addresses_normal_ht+0x81af, %r9
nop
cmp $28588, %rsi
mov (%r9), %cx
nop
and $37979, %rdi
lea addresses_A_ht+0x16daf, %rsi
nop
nop
nop
add $8271, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rsi
movaps %xmm4, (%rsi)
nop
nop
nop
cmp $60930, %r11
lea addresses_A_ht+0x81a8, %rsi
lea addresses_WT_ht+0x17af, %rdi
nop
cmp $15316, %r12
mov $64, %rcx
rep movsw
nop
add $55299, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rdi
push %rdx

// Store
mov $0x4f29dd0000000baf, %r8
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%r8)
dec %rdx

// Load
mov $0xa6f, %r13
xor $40991, %rbx
mov (%r13), %dx
nop
nop
inc %rdi

// Store
mov $0x6f, %r8
nop
and $61859, %rax
movb $0x51, (%r8)
nop
nop
xor $26922, %rdx

// Faulty Load
lea addresses_WC+0x89af, %rbx
clflush (%rbx)
nop
cmp %r14, %r14
movaps (%rbx), %xmm0
vpextrq $1, %xmm0, %rdx
lea oracles, %r8
and $0xff, %rdx
shlq $12, %rdx
mov (%r8,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'00': 126, '45': 33, '48': 5}
45 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 45 00 00 45 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 45 00 00 48 45 45 00 48 00 00 00 00 00 00 00 00 45 48 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 45 45 00 45 00 00 45 00 45 00 00 45 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00
*/
