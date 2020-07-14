.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa2a5, %rsi
lea addresses_D_ht+0x101a5, %rdi
nop
nop
nop
and $21412, %r13
mov $73, %rcx
rep movsw
nop
nop
nop
nop
dec %rdx
lea addresses_D_ht+0x10a5, %rax
nop
nop
nop
nop
cmp $41987, %r14
mov (%rax), %r13w
nop
nop
xor $39749, %rdi
lea addresses_WT_ht+0x13d59, %rdx
nop
nop
cmp %rcx, %rcx
movups (%rdx), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x18285, %rsi
lea addresses_WT_ht+0x2d, %rdi
nop
nop
nop
nop
nop
sub $18758, %r11
mov $79, %rcx
rep movsq
nop
nop
nop
xor $50789, %r14
lea addresses_UC_ht+0x1d2a5, %rsi
lea addresses_WC_ht+0x14a25, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r13
mov $96, %rcx
rep movsq
nop
nop
add $51448, %rdi
lea addresses_UC_ht+0x115e5, %rsi
lea addresses_WC_ht+0x25a5, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $16, %rcx
rep movsl
nop
nop
add $47636, %rdx
lea addresses_WC_ht+0x14da5, %rsi
lea addresses_A_ht+0x68fd, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $1, %rcx
rep movsb
nop
nop
nop
and $4480, %r14
lea addresses_WC_ht+0x86c5, %rax
and $51541, %rdx
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0xe845, %r11
clflush (%r11)
nop
nop
dec %rax
mov (%r11), %rdi
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x5a65, %r14
clflush (%r14)
nop
nop
nop
sub %rax, %rax
movw $0x6162, (%r14)
nop
and $34945, %r11
lea addresses_D_ht+0x2735, %r14
nop
add %rdx, %rdx
movw $0x6162, (%r14)
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x17e5, %rsi
lea addresses_A_ht+0x3485, %rdi
clflush (%rdi)
nop
nop
nop
xor $1410, %rdx
mov $77, %rcx
rep movsb
cmp $28060, %r13
lea addresses_normal_ht+0x1a615, %rcx
sub %rdx, %rdx
mov (%rcx), %r14d
add $57037, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x3f91, %r10
nop
nop
nop
nop
cmp $41244, %rax
movl $0x51525354, (%r10)
nop
nop
nop
sub $16171, %rdx

// Store
lea addresses_WT+0x125a5, %rcx
sub $28022, %rsi
movb $0x51, (%rcx)
add %rcx, %rcx

// REPMOV
lea addresses_A+0x13a25, %rsi
lea addresses_WT+0x125a5, %rdi
nop
nop
and $63744, %rdx
mov $90, %rcx
rep movsb
nop
xor %rax, %rax

// Store
lea addresses_WC+0x3751, %rsi
nop
nop
add %rcx, %rcx
movb $0x51, (%rsi)
xor $58756, %rsi

// Store
lea addresses_A+0x11a45, %rcx
nop
nop
xor $48791, %rbp
movb $0x51, (%rcx)
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x15245, %rdi
nop
cmp $11512, %rax
movb $0x51, (%rdi)
nop
nop
xor %rax, %rax

// Load
lea addresses_WC+0x191e5, %rsi
nop
nop
nop
nop
cmp $2425, %r13
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
cmp $33449, %r10

// Faulty Load
lea addresses_WT+0x125a5, %rax
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rax), %r10w
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'35': 36}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
