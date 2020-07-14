.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1a45f, %rsi
lea addresses_UC_ht+0x170d3, %rdi
nop
add $628, %rbx
mov $0, %rcx
rep movsl
nop
nop
cmp $45226, %r12
lea addresses_A_ht+0x49d3, %rsi
lea addresses_WT_ht+0xa783, %rdi
nop
nop
sub %rbx, %rbx
mov $34, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_A_ht+0xd553, %r12
lfence
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x3933, %r12
nop
nop
nop
nop
nop
add $29715, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x19953, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%rsi), %r12w
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x15153, %rsi
lea addresses_UC_ht+0xb384, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $26387, %r8
mov $1, %rcx
rep movsq
nop
nop
add $51670, %rsi
lea addresses_UC_ht+0x16153, %rbx
nop
nop
nop
nop
add %r12, %r12
movb (%rbx), %r8b
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x15d53, %rsi
lea addresses_UC_ht+0x17953, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $5334, %r13
mov $56, %rcx
rep movsw
nop
nop
nop
and $4385, %rcx
lea addresses_normal_ht+0x183b, %r11
nop
nop
nop
nop
nop
inc %rdi
movups (%r11), %xmm7
vpextrq $1, %xmm7, %r8
nop
and %rbx, %rbx
lea addresses_A_ht+0x123e2, %r8
clflush (%r8)
nop
nop
nop
nop
cmp %r11, %r11
movb (%r8), %cl
nop
nop
nop
cmp $35414, %r13
lea addresses_WT_ht+0x3fd3, %rbx
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rbx)
nop
nop
cmp $53599, %r12
lea addresses_WT_ht+0xfc53, %rcx
clflush (%rcx)
nop
nop
nop
add %r8, %r8
movw $0x6162, (%rcx)
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x6834070000000f53, %rbx
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rbx)

// Exception!!!
mov (0), %rax
nop
nop
nop
xor $47649, %rsi

// Store
lea addresses_A+0x14953, %rbp
nop
nop
nop
cmp %rcx, %rcx
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub $41807, %rcx

// Store
lea addresses_A+0x7153, %rcx
and $34038, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
inc %rsi

// Load
lea addresses_D+0x8297, %rax
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%rax), %rcx
add $3808, %rdi

// Store
lea addresses_D+0x1ee53, %r9
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_D+0xfa13, %rsi
nop
nop
cmp $9300, %r9
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
nop
nop
xor $16154, %rcx

// Load
lea addresses_US+0x5965, %r9
nop
nop
add $36487, %rbp
mov (%r9), %rax
nop
add %r9, %r9

// Faulty Load
lea addresses_A+0x7153, %rax
nop
nop
nop
and $1166, %rsi
movb (%rax), %r9b
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
