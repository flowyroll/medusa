.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5147, %rsi
lea addresses_D_ht+0xb4f, %rdi
cmp $44485, %rbp
mov $45, %rcx
rep movsw
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x149c5, %rsi
lea addresses_normal_ht+0x99bf, %rdi
clflush (%rdi)
nop
cmp $34209, %r10
mov $93, %rcx
rep movsb
nop
inc %rcx
lea addresses_normal_ht+0x79bf, %r12
nop
nop
nop
cmp $60607, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1b08f, %rsi
lea addresses_UC_ht+0x863f, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $50, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x827f, %rdi
nop
nop
nop
dec %rax
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r12
nop
nop
nop
nop
nop
add $22403, %r10
lea addresses_normal_ht+0x1e49f, %rsi
lea addresses_normal_ht+0x4abf, %rdi
nop
nop
nop
sub %r13, %r13
mov $120, %rcx
rep movsw
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1a67b, %rsi
lea addresses_UC_ht+0x64bf, %rdi
and %rbp, %rbp
mov $0, %rcx
rep movsw
nop
nop
nop
nop
and $53368, %rsi
lea addresses_normal_ht+0x51bf, %r13
dec %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r13)
nop
add $35008, %r10
lea addresses_D_ht+0x190bf, %r10
clflush (%r10)
nop
cmp %rsi, %rsi
movb $0x61, (%r10)
nop
nop
nop
nop
sub $64420, %rsi
lea addresses_normal_ht+0x8fa5, %rbp
nop
nop
nop
sub %r10, %r10
movb $0x61, (%rbp)
cmp %r10, %r10
lea addresses_WT_ht+0xce29, %r13
nop
nop
cmp $30237, %rdi
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
mfence
lea addresses_A_ht+0xb5bf, %rsi
lea addresses_WC_ht+0xca3f, %rdi
nop
inc %rax
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0xedbf, %r12
nop
nop
and $42855, %rax
mov (%r12), %rcx
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0x1a714, %rsi
lea addresses_WC_ht+0x953f, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r13, %r13
mov $74, %rcx
rep movsw
nop
nop
nop
nop
and $50692, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_UC+0x65bf, %rcx
add %rbx, %rbx
mov (%rcx), %r11d
add %rax, %rax

// Store
lea addresses_UC+0x663f, %r9
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r9)
sub $8965, %rax

// Faulty Load
lea addresses_UC+0x65bf, %rbx
nop
nop
nop
nop
xor %r9, %r9
mov (%rbx), %eax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}}
{'44': 90, '46': 28, 'a7': 1244, '47': 8, '00': 738, 'bf': 19, '49': 947, 'de': 30, 'ff': 46, '3c': 1, '45': 310, 'a6': 18364, '50': 2, '5d': 2}
a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 49 a6 49 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 49 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 00 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 45 a6 a6 a6 00 a6 a6 a6 ff a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 44 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 00 a6 49 a6 a6 45 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 45 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 00 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 45 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 00 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 49 a6 49 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 49 a6 a6 45 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 ff a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 00 a6 a6 44 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 44 a6 a6 a6 49 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 00 de a6 45 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 49 a6 a6 a6 49 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 45 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 45 a6 49 a6 00 a6 a6 a6 49 49 00 a6 a6 a6 a6 a6 a6 a6 45 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 49 a6 49 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 bf a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 45 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 49 44 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 a6 00 a6 a6 a6 a6 a6 a6 a6 a6
*/
