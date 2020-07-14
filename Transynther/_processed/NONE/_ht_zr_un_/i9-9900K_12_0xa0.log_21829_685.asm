.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x3087, %rsi
lea addresses_normal_ht+0x9187, %rdi
nop
nop
nop
nop
nop
sub $16170, %r8
mov $103, %rcx
rep movsl
xor $24858, %rbp
lea addresses_UC_ht+0x6d87, %r9
nop
nop
nop
nop
xor $41561, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
and $0xffffffffffffffc0, %r9
movntdq %xmm5, (%r9)
nop
nop
nop
cmp $33564, %r9
lea addresses_normal_ht+0x34b7, %r9
clflush (%r9)
sub $6419, %r8
mov (%r9), %bp
nop
nop
nop
and $60122, %r8
lea addresses_UC_ht+0x17d67, %r9
and %rsi, %rsi
movl $0x61626364, (%r9)
nop
inc %r9
lea addresses_A_ht+0xc475, %rsi
nop
nop
nop
and $42458, %r13
mov (%rsi), %r8d
sub %rdi, %rdi
lea addresses_normal_ht+0x1bd87, %r8
nop
inc %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%r8)
nop
nop
nop
nop
nop
xor $39865, %r9
lea addresses_UC_ht+0x1ac87, %rbp
nop
nop
nop
nop
inc %r8
mov (%rbp), %rcx
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x11e48, %rdi
cmp %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
nop
and $10064, %r9
lea addresses_UC_ht+0x1e22f, %r13
xor $63727, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r13)
nop
and $3569, %rbp
lea addresses_UC_ht+0x4b87, %rsi
lea addresses_D_ht+0xaed7, %rdi
nop
cmp $57919, %rbp
mov $12, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $32806, %r8
lea addresses_WC_ht+0x14b87, %rcx
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rcx)
nop
add $15376, %r8
lea addresses_UC_ht+0xbd87, %rsi
and %rbp, %rbp
mov (%rsi), %rcx
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x7e87, %rdi
nop
nop
nop
nop
nop
inc %rsi
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
add $41219, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0xa887, %rcx
nop
nop
nop
cmp $24536, %r15
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
cmp $59238, %rsi

// Load
mov $0xa5fba00000009ba, %rsi
nop
add $63548, %r8
mov (%rsi), %ebp
cmp $33350, %r8

// Load
mov $0x4c7, %rcx
nop
nop
nop
and $32214, %r10
mov (%rcx), %r15w
nop
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_UC+0x1934f, %r10
nop
inc %rdi
mov (%r10), %r8d
nop
nop
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_UC+0x1187, %rbp
clflush (%rbp)
nop
nop
sub %rdi, %rdi
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'48': 16616, 'dc': 1, '00': 3813, '46': 1399}
48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 00 48 48 00 48 00 48 48 48 00 48 48 00 00 46 48 00 48 46 48 48 00 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 46 00 48 00 46 48 48 48 00 48 48 48 00 46 48 00 48 48 46 48 00 48 00 48 48 48 48 48 46 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 00 48 00 00 48 00 48 48 00 48 48 48 48 00 00 00 48 00 46 48 48 00 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 46 46 48 48 48 48 46 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 48 48 00 46 48 00 46 48 48 48 48 48 48 46 00 48 48 48 48 00 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 48 00 46 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 00 48 46 46 48 48 00 48 00 48 00 00 48 48 48 48 46 48 48 48 00 46 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 00 48 48 48 46 48 48 48 48 48 48 48 48 00 48 48 00 46 48 00 48 48 48 00 00 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 00 48 00 48 48 48 48 48 46 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 46 48 48 00 48 46 48 48 48 48 46 00 48 00 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 46 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 46 48 48 00 46 48 48 48 00 48 48 46 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 46 00 48 00 00 48 46 48 48 48 46 48 00 48 48 48 48 48 48 00 00 00 48 48 00 48 48 48 48 46 48 00 48 00 48 48 00 46 48 00 48 48 00 48 48 48 48 00 48 48 46 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 46 48 00 00 48 48 48 48 48 48 48 48 48 48 48 46 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 00 46 00 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 46 48 48 48 00 48 00 48 48 00 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 46 00 00 48 00 48 48 48 46 48 48 00 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 46 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 00 46 48 00 00 48 48 48 00 48 48 48 48 48 46 48 48 48 48 48 48 00 48 46 48 48 00 48 00 48 48 48 48 00 48 00 48 48 46 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 00 00 00 48 00 48 48 48 00 48 48 48 00 48 48 48 48 00 00 46 48 00 48 48 48 48 48 48 00 48 48 46 48 48 00 48 48 48 48 48 48 48 48 00 00 48 00 48 48 00 00 00 48 00 46 48 00 00 00 48 48 48 48 48 00 48 48 48 00 46 48 48 48 48 48 48 00 46 00 00 48 48 48 00 48 48 48 48 48 48 48 00 46 00 48 48 00 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 46 00 48 00 48 48 48 48 48 00 48 48 00 00 46 48 48 00 48 48 48 48 48 48 48 48 00 46 48 00 46 48 46 48 48 48 48 48 48
*/
