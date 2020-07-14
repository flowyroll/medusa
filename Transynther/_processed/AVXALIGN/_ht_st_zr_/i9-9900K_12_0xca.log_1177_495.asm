.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9e54, %rcx
nop
nop
nop
nop
nop
cmp $20548, %r12
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rdi
nop
sub %r9, %r9
lea addresses_WT_ht+0x6334, %rsi
lea addresses_UC_ht+0x163b9, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov $31, %rcx
rep movsl
sub $22795, %rsi
lea addresses_WC_ht+0x17718, %rsi
nop
inc %r12
movb (%rsi), %cl
dec %r14
lea addresses_normal_ht+0x599c, %r14
add $56009, %r11
movl $0x61626364, (%r14)
nop
nop
nop
nop
sub $41097, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x1e754, %rsi
lea addresses_PSE+0xa3f4, %rdi
nop
nop
sub $41211, %rbp
mov $99, %rcx
rep movsb
nop
inc %rcx

// Faulty Load
lea addresses_US+0x14754, %r14
nop
nop
nop
cmp %r13, %r13
vmovaps (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_PSE', 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'49': 362, '00': 233, '33': 582}
00 49 00 33 49 33 00 00 33 00 49 00 33 33 49 33 00 00 33 33 33 49 33 49 00 33 33 33 33 00 33 33 49 33 33 49 33 33 49 00 00 33 49 49 33 49 33 00 33 00 00 49 33 33 33 49 33 33 33 00 33 49 00 33 33 49 33 33 00 49 33 49 33 00 49 49 00 33 33 00 33 00 00 00 33 33 49 49 00 33 33 00 33 33 33 49 33 33 33 00 33 49 00 33 33 33 33 49 33 49 49 33 33 49 00 00 33 49 49 33 00 49 33 00 00 49 00 33 49 33 33 33 00 49 49 33 00 33 33 33 33 00 00 33 49 49 33 00 49 00 33 49 33 33 00 33 33 49 00 49 33 33 00 00 00 00 33 33 49 49 00 49 49 49 33 00 49 00 33 49 33 49 33 33 49 33 33 33 49 33 49 49 49 33 33 33 33 33 49 00 33 33 33 49 49 49 33 00 00 00 49 33 49 49 00 49 33 49 49 49 49 00 00 00 33 49 33 49 33 33 33 33 33 33 00 33 33 33 00 33 00 33 33 33 33 33 49 49 49 00 49 49 33 33 49 33 33 33 00 00 00 49 33 33 33 49 33 00 49 33 33 00 33 49 49 33 33 33 33 33 49 33 33 33 49 33 33 49 49 33 33 33 49 33 49 49 33 33 33 00 33 33 33 33 49 00 00 33 00 00 33 49 00 33 49 00 49 33 49 33 33 33 00 49 33 49 49 33 33 33 33 00 00 49 49 00 33 49 49 33 49 49 33 00 49 33 33 49 49 49 33 49 49 33 33 49 33 00 33 00 33 49 49 33 49 33 33 33 33 33 00 33 00 33 00 33 33 00 00 49 33 00 33 33 00 00 33 49 33 33 33 00 49 33 33 33 33 33 49 33 33 49 33 33 33 00 49 49 49 49 33 49 49 49 49 49 33 49 49 00 33 33 33 00 00 33 33 33 33 33 49 49 33 33 00 33 33 33 49 33 00 33 33 49 49 00 00 33 00 33 49 33 33 33 33 33 33 00 33 49 33 00 00 33 00 33 00 33 33 49 33 33 33 49 49 00 33 33 49 00 00 33 33 49 33 49 33 00 49 33 33 33 33 00 49 49 33 33 49 49 49 33 49 33 00 00 49 49 49 49 49 49 49 49 49 49 33 49 33 00 33 33 33 00 33 49 33 00 49 33 00 00 49 33 33 33 33 49 49 33 33 49 33 00 00 33 33 49 49 00 49 33 33 33 33 33 49 00 00 00 00 49 00 00 33 33 49 33 33 33 49 49 49 33 33 00 00 33 49 33 00 33 49 49 49 33 33 33 33 33 33 33 49 49 33 00 49 33 33 00 00 33 49 33 33 33 33 33 00 49 00 33 00 49 33 49 33 00 33 00 33 49 33 33 33 33 33 49 33 49 00 33 33 00 33 49 33 33 33 33 33 49 33 49 49 33 49 33 33 49 49 33 33 49 33 49 49 33 49 49 33 33 49 33 00 33 33 33 33 00 49 49 33 49 49 33 00 49 49 33 33 49 33 00 49 00 33 33 33 49 49 33 49 49 00 49 49 33 33 49 33 49 33 00 33 49 33 33 49 33 49 33 33 33 33 00 33 33 49 00 33 33 33 33 33 00 00 33 49 00 00 49 33 33 33 49 33 33 33 33 33 49 49 33 00 49 00 49 49 49 00 00 00 00 33 00 00 00 00 33 33 49 00 00 33 00 49 33 33 33 49 49 00 00 00 33 49 49 49 00 00 49 33 00 49 33 33 00 00 33 49 49 49 33 49 33 33 33 00 33 33 49 49 33 00 00 49 33 49 33 49 33 00 33 00 33 49 33 00 49 33 00 33 49 00 00 49 33 49 49 33 49 33 00 00 33 49 49 49 00 33 33 49 49 49 00 49 33 49 49 49 33 33 33 49 00 33 00 33 33 49 33 33 00 49 33 33 33 33 33 49 49 49 33 49 49 33 33 49 00 49 33 00 00 49 00 33 00 00 49 49 33 33 49 33 49 49 33 33 33 33 33 49 33 49 33 49 49 33 33 49 00 00 33 33 33 00 49 49 00 33 33 33 33 33 33 33 49 33 49 33 33 49 33 33 00 00 33 33 49 33 49 33 33 49 33 00 49 33 33 49 33 49 33 00 49 49 49 33 33 49 49 00 33 49 00 49 00 33 33 00 33 33 33 49 33 33 00 49 49 33 49 33 49 49 33 49 33 49 49 00 00 33 49 00 33 33 33 33 49
*/
