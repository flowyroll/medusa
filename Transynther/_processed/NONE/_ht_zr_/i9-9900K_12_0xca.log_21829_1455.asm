.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18ab9, %rsi
lea addresses_WT_ht+0x8d4d, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $114, %rcx
rep movsl
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x60f5, %r13
nop
nop
add %rbp, %rbp
movb $0x61, (%r13)
nop
nop
sub $4333, %rdx
lea addresses_UC_ht+0xbdb5, %rsi
lea addresses_WT_ht+0x19ef5, %rdi
sub $13912, %r11
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
and $45882, %r11
lea addresses_normal_ht+0x2235, %rsi
lea addresses_D_ht+0x7a91, %rdi
nop
nop
nop
nop
nop
cmp $20727, %rbp
mov $101, %rcx
rep movsw
nop
add $40880, %r11
lea addresses_normal_ht+0xd4f5, %rsi
lea addresses_UC_ht+0x1711d, %rdi
clflush (%rsi)
nop
sub $6073, %r13
mov $0, %rcx
rep movsw
nop
nop
nop
sub $44427, %rdi
lea addresses_WC_ht+0x85f5, %rsi
lea addresses_A_ht+0x7f5, %rdi
nop
nop
sub $3077, %r13
mov $42, %rcx
rep movsl
xor $730, %rcx
lea addresses_D_ht+0xf3f5, %rsi
lea addresses_D_ht+0x10ab5, %rdi
clflush (%rdi)
nop
nop
nop
xor $18463, %rbp
mov $127, %rcx
rep movsb
nop
dec %r12
lea addresses_D_ht+0x5385, %rdx
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rdx)
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xd187, %rbp
cmp %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x65a5, %r12
and %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r12)
nop
nop
cmp $34026, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rdi
push %rdx

// Faulty Load
lea addresses_UC+0x55f5, %r9
nop
nop
nop
inc %r13
movups (%r9), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'44': 1242, '48': 675, '00': 12734, '46': 7178}
00 00 00 46 00 00 00 00 44 46 46 46 46 46 00 46 00 46 00 00 00 00 00 00 44 46 46 00 46 46 00 46 00 46 00 46 00 00 00 48 46 46 46 00 46 00 46 00 46 00 00 00 00 00 48 46 46 46 00 00 00 46 00 46 00 46 00 00 00 44 00 48 46 46 46 46 00 00 46 46 46 00 00 00 00 44 44 46 46 00 46 46 00 00 00 46 46 00 00 00 00 00 44 48 00 46 00 00 46 00 46 00 46 00 00 00 00 00 46 00 46 46 46 00 46 00 00 00 00 00 00 00 44 00 00 46 46 46 46 00 00 00 46 46 00 00 00 00 00 48 00 46 00 46 00 00 46 46 00 00 00 00 44 00 00 46 46 46 46 00 46 00 00 00 00 00 00 44 44 44 46 46 00 46 46 00 46 00 00 00 00 00 00 00 46 46 00 46 46 46 46 00 46 00 00 46 00 00 00 44 48 46 46 46 46 46 00 46 00 00 00 00 00 00 00 00 00 44 48 46 46 46 46 46 00 46 00 00 00 00 00 00 44 48 46 00 46 46 00 46 00 00 00 00 00 00 44 00 44 46 46 46 46 46 00 00 46 00 00 00 00 00 00 00 44 00 46 46 46 00 46 00 00 00 00 00 00 00 48 48 46 00 46 46 00 46 46 00 00 46 00 00 00 00 00 44 48 48 46 46 46 46 00 00 46 00 00 00 00 00 00 00 46 46 46 46 46 46 00 46 00 46 00 46 00 00 00 48 46 46 00 46 46 00 00 00 46 00 00 00 00 44 46 46 46 46 46 00 46 46 00 46 00 00 00 00 00 00 00 44 44 48 46 46 46 00 46 46 46 00 46 46 00 00 00 00 00 44 46 00 00 00 00 00 00 46 46 00 00 00 00 44 00 00 46 46 46 46 46 00 46 00 00 00 00 44 00 44 46 46 46 46 46 00 00 46 46 00 00 00 00 00 44 46 00 46 46 00 46 00 46 00 00 00 00 44 44 00 46 46 46 46 00 46 00 00 00 00 00 00 00 00 00 48 46 46 00 46 00 46 00 00 44 00 46 46 46 46 00 46 00 46 00 00 00 00 00 00 44 00 46 46 00 00 46 00 46 46 00 00 00 00 00 48 48 46 00 46 46 46 46 00 00 46 00 00 00 00 00 44 46 00 46 46 00 46 00 00 46 00 00 00 00 00 44 44 44 00 46 46 00 46 00 46 00 00 00 00 00 44 44 48 00 00 46 46 00 00 46 46 00 00 44 48 46 46 46 00 46 00 46 46 00 46 00 00 00 00 44 48 46 46 00 46 00 46 46 46 00 46 00 00 00 00 44 46 00 46 46 46 00 46 00 00 00 00 00 00 00 00 46 46 46 00 46 00 46 00 00 00 00 44 44 00 00 46 46 00 46 00 46 00 00 00 00 00 00 44 48 46 46 46 46 00 46 46 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 44 44 46 00 46 46 46 00 00 46 00 00 00 00 00 00 00 00 48 00 00 46 46 46 00 00 46 46 00 00 00 00 00 44 00 46 46 46 00 00 00 00 00 00 00 00 00 44 48 46 00 46 46 00 00 00 00 46 00 00 00 00 48 00 46 00 46 00 00 00 00 00 00 00 00 00 00 44 44 46 46 46 46 46 00 00 00 46 00 00 00 00 00 44 46 46 46 46 00 00 00 00 00 00 00 00 44 00 46 46 46 46 00 00 46 00 00 00 00 00 48 46 00 46 46 00 46 46 00 00 00 00 00 00 00 44 00 00 46 46 00 46 00 00 00 00 46 00 00 00 00 00 48 00 46 46 46 00 46 00 00 46 00 00 00 00 48 00 46 46 46 00 00 46 00 46 00 00 00 00 00 48 00 46 00 00 46 00 00 46 00 00 46 00 00 00 46 00 44 00 46 46 46 46 46 46 46 00 00 00 46 00 00 00 00 44 48 46 00 00 46 00 46 00 46 00 00 00 48 00 46 46 46 00 00 46 00 00 46 00 00 00 46 46 46 00 46 00 46 00 46 00 00 00 00 00 44 00 46 46 46 46 00 46 00 46 00 00 00 00 00 44 00 00 46 00 00 00 46 46 46 00 46 00 00 00 00 00 00 00 44 46 46 46 46 00 46 46 46 00 00 00 00 00 00 00 48 46 46 46 46 46 46 00 00 46 46 00 00 00 00 48 46 46 46 46 46 00 46 00
*/
