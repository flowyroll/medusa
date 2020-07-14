.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x8222, %rsi
lea addresses_normal_ht+0x13e2, %rdi
nop
nop
cmp $4220, %r14
mov $65, %rcx
rep movsb
nop
nop
and $57902, %r9
lea addresses_WC_ht+0xe222, %rbx
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0xf162, %r14
add $26470, %rsi
movb $0x61, (%r14)
sub $39603, %rbx
lea addresses_WC_ht+0xbce4, %rsi
lea addresses_A_ht+0x18962, %rdi
nop
nop
nop
and $16549, %rbx
mov $93, %rcx
rep movsb
nop
dec %rdi
lea addresses_A_ht+0xd62, %r9
nop
dec %rdi
mov (%r9), %cx
nop
dec %rdi
lea addresses_normal_ht+0xe042, %r11
nop
nop
nop
nop
and %rcx, %rcx
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rsi
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x16ce2, %rsi
lea addresses_UC_ht+0x8ee2, %rdi
nop
nop
and $28277, %rdx
mov $20, %rcx
rep movsb
inc %rsi
lea addresses_A_ht+0x137ba, %rbx
and %rdi, %rdi
mov (%rbx), %esi
nop
nop
nop
nop
cmp $10358, %r9
lea addresses_WC_ht+0x17916, %rsi
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rsi)
nop
cmp %r9, %r9
lea addresses_A_ht+0x9d62, %r9
cmp $315, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
add $29032, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_RW+0xb46a, %rcx
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movaps %xmm3, (%rcx)
nop
nop
and %rbx, %rbx

// Load
lea addresses_RW+0xbf22, %r11
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%r11), %r12w
nop
nop
nop
and $62717, %r11

// Faulty Load
lea addresses_RW+0x7162, %rbx
nop
nop
sub %rcx, %rcx
movb (%rbx), %al
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'32': 110}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
