.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16837, %rdx
nop
nop
nop
nop
add %r14, %r14
movb (%rdx), %r12b
and $42792, %rbx
lea addresses_D_ht+0x12d37, %rsi
lea addresses_normal_ht+0x14737, %rdi
nop
nop
nop
nop
inc %r12
mov $38, %rcx
rep movsq
sub %rcx, %rcx
lea addresses_D_ht+0x2137, %rsi
nop
nop
nop
nop
nop
mfence
mov (%rsi), %r12d
nop
nop
nop
nop
cmp $1062, %rdx
lea addresses_UC_ht+0xad37, %rdx
nop
nop
nop
and %rdi, %rdi
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rbx
nop
sub %rsi, %rsi
lea addresses_D_ht+0xdca1, %rdx
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %rdx
movaps %xmm5, (%rdx)
nop
nop
nop
nop
add $29121, %rbx
lea addresses_A_ht+0x1077d, %rsi
lea addresses_WT_ht+0x19797, %rdi
nop
nop
sub $20900, %r12
mov $19, %rcx
rep movsb
inc %r14
lea addresses_D_ht+0x243d, %rsi
lea addresses_WT_ht+0x14eff, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $34, %rcx
rep movsl
nop
xor $1020, %rdx
lea addresses_WT_ht+0x16cf7, %rsi
lea addresses_WC_ht+0x1b537, %rdi
nop
nop
xor $54991, %r12
mov $92, %rcx
rep movsq
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x3e37, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %rbx, %rbx
movl $0x61626364, (%rcx)
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x20b7, %r12
nop
nop
cmp %r14, %r14
mov (%r12), %r8
nop
nop
xor $1368, %r14
lea addresses_WC_ht+0x1cd37, %rsi
lea addresses_WC_ht+0x19e37, %rdi
nop
nop
nop
and $61802, %rdx
mov $51, %rcx
rep movsw
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1024c, %r14
nop
nop
cmp $44382, %rdi
mov (%r14), %r12
nop
nop
nop
nop
nop
sub $26511, %r14
lea addresses_D_ht+0xa237, %rbx
nop
nop
nop
add $29297, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0xacf9, %r12
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r12)
nop
nop
sub $12398, %rsi
lea addresses_WT_ht+0xdfc7, %r14
nop
nop
nop
nop
nop
cmp %r12, %r12
movb (%r14), %r8b
nop
nop
nop
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rdi
push %rdx

// Store
lea addresses_WC+0xed37, %rdi
nop
and %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
add $37356, %rdx

// Store
lea addresses_WT+0x197c7, %r11
nop
nop
cmp %r10, %r10
movw $0x5152, (%r11)
add %r10, %r10

// Store
lea addresses_UC+0x17d37, %r12
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r12)
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_UC+0x17d37, %r15
nop
cmp $62077, %rdx
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 7, '58': 21822}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
