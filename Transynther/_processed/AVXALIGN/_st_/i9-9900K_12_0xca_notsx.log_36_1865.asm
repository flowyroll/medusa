.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7d00, %rsi
lea addresses_D_ht+0x10c72, %rdi
clflush (%rsi)
xor %r10, %r10
mov $115, %rcx
rep movsb
nop
nop
nop
nop
nop
add $56514, %r13
lea addresses_D_ht+0x17300, %rsi
lea addresses_normal_ht+0xcb00, %rdi
nop
nop
sub $47858, %r8
mov $60, %rcx
rep movsb
nop
nop
nop
xor $40399, %rcx
lea addresses_UC_ht+0xa7e0, %r13
nop
sub %r14, %r14
mov $0x6162636465666768, %r8
movq %r8, (%r13)
xor %r13, %r13
lea addresses_WT_ht+0x5900, %rsi
and %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rsi
movaps %xmm4, (%rsi)
sub $46463, %rdi
lea addresses_WT_ht+0x10208, %rsi
lea addresses_WC_ht+0x1cd80, %rdi
nop
nop
nop
dec %r15
mov $60, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $589, %r10
lea addresses_UC_ht+0xce60, %rcx
add %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rdi

// Store
mov $0x2ae3ff0000000ee0, %rdi
nop
nop
nop
add $39679, %r9
movl $0x51525354, (%rdi)
add %r9, %r9

// Store
lea addresses_RW+0x15330, %r9
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r9)
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x1f100, %r12
nop
nop
nop
nop
and %r11, %r11
movb $0x51, (%r12)
nop
add %rbp, %rbp

// Load
lea addresses_RW+0x19900, %r12
nop
sub %rbp, %rbp
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
dec %r13

// Store
lea addresses_D+0x2d00, %rdi
cmp %r8, %r8
movl $0x51525354, (%rdi)
nop
nop
cmp $59685, %rdi

// Faulty Load
lea addresses_RW+0x13900, %r12
nop
nop
cmp $61285, %r11
movb (%r12), %r9b
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'32': 36}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
