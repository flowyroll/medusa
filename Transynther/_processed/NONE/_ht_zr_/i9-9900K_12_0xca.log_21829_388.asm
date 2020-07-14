.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13dac, %rsi
lea addresses_WC_ht+0xa5ac, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $90, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0x630c, %rsi
lea addresses_A_ht+0x1b9ac, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $1, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0xabbc, %r15
nop
nop
nop
sub $8115, %r8
movb $0x61, (%r15)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x166ac, %r15
nop
nop
nop
add $52278, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r15
vmovaps %ymm0, (%r15)
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x24ca, %r10
nop
nop
nop
cmp %rdi, %rdi
mov (%r10), %r9
nop
nop
inc %rdi
lea addresses_A_ht+0x1b1cc, %rsi
lea addresses_normal_ht+0x15dac, %rdi
xor $65359, %r8
mov $69, %rcx
rep movsq
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1e5ac, %rsi
lea addresses_WC_ht+0x8dac, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $28243, %r12
mov $53, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $30348, %rcx
lea addresses_A_ht+0x1e5f5, %rcx
clflush (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
mov (%rcx), %r10d
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x51ac, %r12
cmp $58356, %rcx
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_UC+0x1750c, %r9
clflush (%r9)
xor %rsi, %rsi
movb $0x51, (%r9)
nop
nop
nop
and %r11, %r11

// Store
mov $0xdec, %rcx
nop
nop
inc %r8
movb $0x51, (%rcx)
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x14d6c, %r11
sub %r12, %r12
movw $0x5152, (%r11)
xor $50964, %rsi

// Faulty Load
lea addresses_WC+0x169ac, %r11
nop
xor %r9, %r9
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'44': 12644, '45': 3824, '49': 5353, '00': 8}
44 49 44 44 49 49 44 49 44 45 44 49 44 49 44 49 44 49 44 49 44 44 49 49 44 49 44 45 44 44 44 45 49 44 49 49 44 44 49 44 49 44 49 44 44 49 44 44 44 44 44 49 44 44 49 44 44 44 45 44 49 44 44 49 44 45 44 44 49 44 49 44 49 49 44 44 44 49 45 44 44 49 44 49 44 49 44 49 44 44 44 49 44 44 49 45 49 44 44 49 44 44 45 45 44 44 45 44 49 45 45 44 45 45 44 44 49 44 45 44 49 44 49 44 49 44 44 44 44 49 44 44 49 44 44 44 45 44 49 44 49 44 44 44 44 49 44 49 44 44 44 44 44 49 44 49 49 44 49 44 44 49 44 44 45 44 49 44 44 49 44 44 49 45 44 44 44 44 45 45 45 44 44 49 44 45 44 44 49 44 49 44 44 45 49 44 44 49 44 49 44 44 49 44 49 44 49 44 49 44 44 45 44 45 44 45 49 44 44 49 44 44 44 49 44 45 44 44 49 45 44 44 44 49 44 44 44 49 45 44 44 44 49 44 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 49 44 44 49 44 49 44 49 44 49 44 49 44 49 44 49 44 44 44 44 44 44 49 44 44 44 44 45 44 49 44 44 45 44 49 44 49 44 44 44 44 44 49 49 44 45 44 44 44 44 44 44 45 45 44 44 44 49 44 44 44 49 44 44 49 44 49 44 44 49 44 44 49 44 44 44 44 49 44 45 44 44 49 44 45 44 49 44 44 49 44 44 44 45 44 49 44 49 44 49 44 45 44 49 44 44 49 44 44 49 45 44 49 44 44 45 45 44 44 44 44 44 44 49 44 44 49 49 44 44 45 44 49 44 44 44 44 49 49 44 44 49 44 49 44 44 49 44 44 49 44 44 44 44 49 44 49 45 44 49 44 49 44 44 44 44 44 44 49 44 45 44 44 49 44 45 45 45 44 44 44 49 45 44 44 49 44 44 49 44 44 45 44 49 44 49 44 49 44 49 44 44 49 44 44 44 45 44 44 49 44 49 44 49 44 44 49 44 49 45 44 44 44 44 49 44 44 49 44 44 49 45 44 49 44 44 49 44 44 49 44 49 44 44 45 44 49 44 45 44 44 44 49 44 44 44 44 44 49 49 44 49 44 44 44 45 45 44 49 44 49 44 44 49 45 49 44 49 44 49 44 44 49 44 44 44 44 49 44 44 49 44 44 44 44 45 44 44 49 49 44 44 44 49 44 45 45 45 44 44 49 44 49 44 45 44 44 44 49 45 44 49 44 49 45 44 44 44 49 44 49 44 44 49 44 49 44 44 49 44 49 44 44 49 44 49 44 44 44 44 44 49 44 45 44 49 44 44 49 44 44 44 44 49 44 44 49 44 49 44 44 45 44 49 44 45 45 44 49 45 44 44 44 44 49 44 44 44 44 44 44 49 45 44 49 45 45 49 44 49 44 44 49 44 49 44 49 44 45 44 49 49 44 44 44 49 44 44 49 44 45 44 44 44 44 44 44 49 44 44 49 44 49 44 44 49 44 44 49 44 49 45 44 49 44 49 45 44 49 49 45 44 44 44 49 44 45 44 44 44 44 49 44 44 49 44 49 44 44 49 44 44 49 44 44 44 44 44 44 49 44 49 44 49 44 44 49 49 44 49 44 44 44 44 45 44 44 44 45 45 44 44 44 49 44 49 44 49 44 49 49 44 44 44 44 44 49 45 44 49 44 49 44 44 49 44 44 49 44 49 44 44 44 49 44 44 44 49 44 45 44 44 44 44 49 45 44 45 44 49 44 44 45 44 49 44 44 49 44 49 45 44 49 44 49 44 49 44 44 49 44 44 44 44 49 44 49 44 49 44 44 49 44 49 45 44 49 44 44 45 44 49 44 49 44 44 44 49 49 44 44 44 44 49 44 49 44 45 45 44 44 49 44 44 49 44 44 49 45 44 44 44 45 44 45 44 44 49 44 49 44 44 49 44 49 45 44 44 44 49 45 44 45 44 44 49 44 44 44 44 49 45 44 44 44 49 44 49 44 49 44 49 44 49 44 45 44 44 44 44 49 44 44 44 44 45 44 49 44 45 44 49 44 49 44 44 44 44 49 44 44 49 44 45 44 45 44 44 44 49 44 49 44 49 44 49 44 44 45 44 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 49 44 49 44 45 44 44 49 44 44 49 44 44 44 44 44
*/
