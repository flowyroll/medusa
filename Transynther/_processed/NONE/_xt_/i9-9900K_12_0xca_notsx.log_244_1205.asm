.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x19726, %rax
nop
nop
nop
nop
add %rsi, %rsi
mov (%rax), %r11
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x14016, %rsi
lea addresses_A_ht+0x1b37e, %rdi
nop
sub %r14, %r14
mov $104, %rcx
rep movsw
and %rdi, %rdi
lea addresses_normal_ht+0xfb7e, %rsi
lea addresses_normal_ht+0xd8ce, %rdi
inc %r12
mov $106, %rcx
rep movsw
nop
nop
nop
and $52761, %rdi
lea addresses_UC_ht+0x436e, %r12
nop
nop
inc %rax
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1d590, %rsi
lea addresses_WT_ht+0xd37e, %rdi
nop
nop
nop
sub %r11, %r11
mov $40, %rcx
rep movsw
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x136fe, %rsi
lea addresses_UC_ht+0xa9fe, %rdi
cmp $43002, %r12
mov $57, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x1282, %rdx
nop
nop
nop
add %rsi, %rsi
movb (%rdx), %r14b
add $19816, %r14
lea addresses_normal_ht+0x46fe, %rsi
lea addresses_WT_ht+0xb1fe, %rdi
cmp %r14, %r14
mov $39, %rcx
rep movsw
nop
cmp $55937, %r12
lea addresses_normal_ht+0x4f7e, %rax
nop
nop
xor $41133, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi

// Store
mov $0x6852940000000b7e, %rcx
clflush (%rcx)
nop
sub %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
dec %rax

// Load
lea addresses_PSE+0x18b7e, %r12
nop
nop
nop
and $33258, %r14
mov (%r12), %rdi
nop
nop
nop
nop
xor $35777, %r13

// Store
lea addresses_A+0x1867e, %r11
nop
nop
nop
nop
add $15839, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_UC+0x17b3e, %rax
nop
nop
and $23372, %r12
movl $0x51525354, (%rax)
nop
add $11713, %rcx

// Faulty Load
lea addresses_RW+0x1237e, %r14
nop
sub %rdi, %rdi
movb (%r14), %r12b
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'32': 244}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
