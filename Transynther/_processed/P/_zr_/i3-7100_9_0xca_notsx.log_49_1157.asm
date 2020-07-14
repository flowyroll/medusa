.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7986, %rsi
lea addresses_A_ht+0x156ea, %rdi
clflush (%rsi)
nop
nop
nop
xor $53194, %r13
mov $94, %rcx
rep movsq
nop
nop
nop
nop
add $27122, %rbp
lea addresses_D_ht+0x6eaa, %rax
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%rax)
nop
nop
nop
nop
and $11305, %rcx
lea addresses_D_ht+0xccea, %r14
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm5
and $0xffffffffffffffc0, %r14
vmovaps %ymm5, (%r14)
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x76ea, %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rcx)
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x167a2, %rcx
nop
nop
cmp $55426, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
add $19300, %rsi
lea addresses_normal_ht+0x17ac0, %rcx
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rcx)
nop
sub $26501, %r14
lea addresses_normal_ht+0x1acef, %rcx
xor %r14, %r14
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x179fa, %rsi
lea addresses_A_ht+0x18e2a, %rdi
nop
inc %r14
mov $43, %rcx
rep movsb
nop
sub $17261, %rax
lea addresses_normal_ht+0xe17a, %rax
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
xor $58441, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rsi

// Faulty Load
mov $0x6aa, %r14
nop
nop
nop
nop
nop
inc %rsi
movups (%r14), %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
