.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rsi
lea addresses_WT_ht+0x1e0ba, %r14
nop
nop
nop
nop
inc %r12
movl $0x61626364, (%r14)
nop
nop
nop
sub $39009, %r8
lea addresses_WT_ht+0xdea6, %r10
clflush (%r10)
nop
nop
cmp $32099, %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
nop
add $3542, %rcx
lea addresses_WC_ht+0x14aa6, %rcx
nop
nop
nop
cmp %r12, %r12
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
nop
xor $64108, %r10
pop %rsi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0x749a, %r12
xor $25865, %rsi
movb $0x51, (%r12)
nop
nop
nop
nop
xor $426, %rcx

// Store
lea addresses_A+0x651a, %rbx
nop
nop
nop
nop
nop
xor $64531, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
sub $51491, %r8

// Store
lea addresses_D+0x1e49e, %rsi
nop
nop
nop
nop
cmp $26429, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
cmp %r13, %r13

// Store
lea addresses_UC+0x1191a, %rsi
nop
lfence
movl $0x51525354, (%rsi)
cmp %rbx, %rbx

// Faulty Load
lea addresses_US+0x1b51a, %r13
xor %rsi, %rsi
mov (%r13), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1}
00
*/
