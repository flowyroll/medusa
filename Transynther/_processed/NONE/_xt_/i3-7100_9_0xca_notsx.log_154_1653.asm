.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9591, %rsi
lea addresses_normal_ht+0x17d, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $73, %rcx
rep movsq
nop
nop
add $54372, %rbx
lea addresses_normal_ht+0x143ad, %r10
nop
nop
nop
nop
cmp %r15, %r15
mov (%r10), %edi
sub $36139, %rdi
lea addresses_normal_ht+0x66c1, %rsi
lea addresses_UC_ht+0x21ad, %rdi
nop
nop
nop
inc %r9
mov $71, %rcx
rep movsb
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x15d6d, %rcx
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
sub $28604, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx

// Store
lea addresses_D+0x11bb9, %r10
nop
nop
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r10)
nop
nop
nop
nop
add %r11, %r11

// Store
lea addresses_normal+0x4529, %r14
nop
sub $2661, %r9
movw $0x5152, (%r14)
nop
nop
nop
cmp $23055, %r15

// Store
lea addresses_A+0x1262d, %r10
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovaps %ymm3, (%r10)
nop
nop
nop
nop
nop
add $34171, %r10

// Store
lea addresses_normal+0x14fed, %r9
nop
nop
nop
nop
nop
dec %r15
movb $0x51, (%r9)
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_normal+0x17ad, %r10
nop
sub %r14, %r14
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'34': 154}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
