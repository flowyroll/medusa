.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1830d, %rsi
cmp $10149, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
add $35167, %rax
lea addresses_normal_ht+0x18db, %rsi
lea addresses_D_ht+0xd7b5, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $121, %rcx
rep movsw
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x15911, %rsi
lea addresses_WT_ht+0x1afcd, %rdi
nop
nop
add $400, %rdx
mov $115, %rcx
rep movsb
nop
inc %rax
lea addresses_normal_ht+0x1568a, %rcx
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x389b, %rcx
nop
and %r9, %r9
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rdi
and %rdi, %rdi
lea addresses_WT_ht+0x8a35, %rsi
nop
and $22224, %r14
movb (%rsi), %r10b
nop
nop
nop
sub $57714, %rdi
lea addresses_UC_ht+0xbab5, %rsi
lea addresses_WC_ht+0x48c5, %rdi
nop
nop
and $32736, %rax
mov $25, %rcx
rep movsl
nop
xor $5908, %r10
lea addresses_normal_ht+0x35, %rdi
nop
xor $21769, %rax
movb (%rdi), %r14b
nop
nop
nop
nop
cmp $28606, %r9
lea addresses_UC_ht+0xd5b5, %rsi
lea addresses_WT_ht+0x134bb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
lfence
mov $109, %rcx
rep movsw
nop
nop
sub $41825, %rax
lea addresses_WC_ht+0x1efb5, %rax
and %r10, %r10
movl $0x61626364, (%rax)
sub $6642, %r9
lea addresses_UC_ht+0x1dbc5, %rsi
lea addresses_UC_ht+0x15795, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x11fb5, %rax
nop
nop
nop
and $59949, %rdx
mov (%rax), %r14w
nop
nop
nop
nop
nop
add $56781, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rsi

// Store
lea addresses_normal+0x1bb95, %rbp
inc %r9
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_US+0x1bfb5, %r9
nop
nop
nop
cmp $50090, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r9)
nop
sub $38302, %r9

// Store
lea addresses_US+0xa675, %r11
nop
nop
and $58975, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movaps %xmm7, (%r11)
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_PSE+0x125b5, %r10
add %rcx, %rcx
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'33': 10778}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
