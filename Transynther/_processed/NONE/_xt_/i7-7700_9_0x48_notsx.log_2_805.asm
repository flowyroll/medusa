.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xff41, %rsi
lea addresses_D_ht+0x181c1, %rdi
inc %rdx
mov $49, %rcx
rep movsb
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rdx

// Store
lea addresses_US+0x12541, %r13
clflush (%r13)
nop
nop
nop
nop
inc %r11
movw $0x5152, (%r13)
nop
nop
nop
nop
cmp %r11, %r11

// Load
mov $0xc01, %r10
nop
nop
nop
inc %r15
movb (%r10), %dl
xor %r11, %r11

// Load
lea addresses_WC+0x139c1, %r11
nop
nop
nop
nop
and %r15, %r15
movb (%r11), %r10b
nop
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_RW+0x171c1, %rdx
sub %rbx, %rbx
vmovups (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'32': 2}
32 32
*/
