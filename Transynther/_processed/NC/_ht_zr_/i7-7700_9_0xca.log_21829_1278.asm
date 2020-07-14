.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x130b2, %rsi
lea addresses_A_ht+0x741a, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $68, %rcx
rep movsb
nop
nop
nop
cmp $7885, %rax
lea addresses_A_ht+0x1cdb2, %rsi
lea addresses_D_ht+0x5e92, %rdi
clflush (%rdi)
nop
nop
xor $58153, %rdx
mov $4, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x6ab2, %rsi
lea addresses_D_ht+0x14432, %rdi
nop
nop
sub $55215, %r9
mov $75, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x14d0c, %rdx
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb (%rdx), %cl
add %rcx, %rcx
lea addresses_D_ht+0xf64a, %rsi
lea addresses_WT_ht+0x2792, %rdi
nop
sub $21744, %rdx
mov $72, %rcx
rep movsl
nop
nop
nop
nop
xor $33842, %rax
lea addresses_normal_ht+0xf0b2, %rdx
clflush (%rdx)
nop
nop
cmp $12891, %rbp
mov (%rdx), %rdi
nop
add $62524, %rdx
lea addresses_UC_ht+0x1a432, %rsi
lea addresses_WC_ht+0x129d2, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $62, %rcx
rep movsl
nop
nop
nop
nop
nop
add $31785, %rcx
lea addresses_UC_ht+0x1796a, %rcx
clflush (%rcx)
nop
nop
xor %rdi, %rdi
mov (%rcx), %rax
add %rdi, %rdi
lea addresses_normal_ht+0x17712, %r9
nop
nop
nop
dec %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
sub $47824, %rcx
lea addresses_WC_ht+0x78b2, %r9
nop
dec %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
cmp $33813, %rcx
lea addresses_A_ht+0xd292, %rsi
lea addresses_D_ht+0x11d04, %rdi
nop
nop
nop
xor %r15, %r15
mov $53, %rcx
rep movsq
cmp $61521, %rdi
lea addresses_D_ht+0x1048a, %r15
nop
nop
nop
nop
nop
sub %rbp, %rbp
movw $0x6162, (%r15)
nop
nop
add $5156, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_WC+0xad30, %rdi
sub $52200, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movaps %xmm5, (%rdi)
nop
nop
nop
nop
nop
add $25028, %rax

// Store
mov $0x78ed2a00000008b2, %r10
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%r10)
cmp $35015, %r8

// Load
lea addresses_D+0x18c46, %rax
nop
nop
xor $62575, %rdi
mov (%rax), %cx
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x959, %rdi
nop
and %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rdi)
nop
xor $39654, %rbp

// Store
lea addresses_normal+0x1ebf2, %rdi
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rdi)
nop
add %r8, %r8

// Faulty Load
mov $0x1c124000000008b2, %r10
nop
nop
nop
dec %rax
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'44': 17816, '46': 4, '00': 4008, '45': 1}
00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 44 00 44 00 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 00 44 00 44 44 00 44 44 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 00 44 44 00 00 44 00 00 44 44 44 44 00 44 00 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 00 44 44 44 44 44 44 00 44 00 44 44 00 44 00 44 44 00 44 00 44 44 44 00 44 44 44 44 00 44 00 00 44 00 44 44 00 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 00 44 00 44 00 00 44 44 00 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 00 44 00 44 44 00 44 44 00 44 44 00 44 44 00 44 44 00 44 00 44 44 00 00 00 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 44 00 44 44 00 44 00 44 00 44 44 44 44 00 44 00 44 00 44 00 44 44 44 44 44 00 00 44 44 44 44 00 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 00 44 00 44 44 44 44 46 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44
*/
