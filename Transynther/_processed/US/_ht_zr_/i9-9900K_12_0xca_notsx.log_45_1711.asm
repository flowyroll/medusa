.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1d45f, %rsi
nop
nop
add $42067, %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0xf62d, %rsi
lea addresses_WT_ht+0x3eed, %rdi
cmp %rdx, %rdx
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $20896, %rdx
lea addresses_WC_ht+0x13f75, %rcx
nop
nop
nop
nop
inc %r9
mov (%rcx), %r11w
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x8a5d, %rsi
lea addresses_WT_ht+0x3d2d, %rdi
clflush (%rsi)
add %r11, %r11
mov $35, %rcx
rep movsw
nop
sub $43737, %rdi
lea addresses_A_ht+0x1b8ad, %rsi
lea addresses_WC_ht+0x1982d, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $3882, %r8
mov $23, %rcx
rep movsw
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rdi
push %rsi

// Load
mov $0x89b9b0000000a2d, %rsi
and $52595, %r8
vmovaps (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_PSE+0x1a6ed, %r13
clflush (%r13)
xor $37979, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%r13)
xor $61782, %rdi

// Store
lea addresses_UC+0x1ac2d, %r10
inc %r8
movl $0x51525354, (%r10)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_normal+0x9c9d, %r13
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_US+0x1ba2d, %rdi
nop
nop
nop
nop
xor $34026, %rsi
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdi
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'49': 9, '00': 36}
00 00 00 00 49 49 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 00 00 49 00 49 00 00 00 00 00
*/
